//
//  KeychainWrapper.m
//  PO
//
//  Created by Jason on 7/29/12.

//


// *** NOTE *** This class is ARC compliant - any references to CF classes must be paired with a "__bridge" statement to
// cast between Objective-C and Core Foundation Classes.  WWDC 2011 Video "Introduction to Automatic Reference Counting" explains this.
// *** END NOTE ***

#import "KeychainWrapper.h"
#import "PO/RegistrationVC.h"

@implementation KeychainWrapper

+(NSMutableDictionary*) setupSearchDirectoryForIdentifier:(NSString*) identifier
{
    // Setup dictionary to access keychain.
    NSMutableDictionary *searchDictionary = [[NSMutableDictionary alloc] init];
    // Specify we are using a password (rather than a certificate, internet password, etc).
    [searchDictionary setObject:(__bridge id)kSecClassGenericPassword forKey:(__bridge id)kSecClass];
    // Uniquely identify this keychain accessor.
//    [searchDictionary setObject:APP_NAME forKey:(__bridge id)kSecAttrService];
    

    
    
//    UID accoun that will access the keychain
    NSData *encodedIdentifier = [identifier dataUsingEncoding:NSUTF8StringEncoding];
    [searchDictionary setObject:encodedIdentifier forKey:(__bridge id ) kSecAttrGeneric];
    [searchDictionary setObject:encodedIdentifier forKey:(__bridge id)kSecAttrAccount];
      
    
    
    return searchDictionary;
}

+(NSData*)searchKeychainCopyMatchingIdentifier:(NSString *)identifier
{
    NSMutableDictionary *searchDictionary = [self setupSearchDirectoryForIdentifier:identifier];
    
//    set limit of search result ot 1
    [searchDictionary setObject:(__bridge id) kSecMatchLimitOne forKey:(__bridge id) kSecMatchLimit];
    
//    tell want NSData/CFData returned
    [searchDictionary setObject:(__bridge id) kCFBooleanTrue forKey:(__bridge id) kSecReturnData];
    
//    search now
    NSData *result = nil;
    CFTypeRef foundDict = NULL;
    OSStatus status = SecItemCopyMatching((__bridge CFDictionaryRef) searchDictionary, &foundDict);
    
    if (status == noErr) {
        result = (__bridge_transfer NSData*) foundDict;
        
    }
    else
    {
    result = nil;
    
    }

    return result;
}

+(NSString*) keychainStringFromMatchingIdentifier:(NSString *)identifier
{
    NSData *valueData = [self searchKeychainCopyMatchingIdentifier:identifier];
    
    if (valueData) {
        NSString *value = [[NSString alloc ] initWithData:valueData encoding:NSUTF8StringEncoding];
        return value;
    }
    else
    {
        return nil;
    }
}

+(BOOL) createKeychainValue:(NSString *)value forIdentifier:(NSString *)identifier
{
    NSMutableDictionary *dictionary = [self setupSearchDirectoryForIdentifier:identifier];
    NSData *valueData = [value dataUsingEncoding:NSUTF8StringEncoding];
    [dictionary setObject:valueData forKey:(__bridge id) kSecValueData];
    
//    protect keychain so only valid when device is in an unlocked state
    
    [dictionary setObject:(__bridge id) kSecAttrAccessibleWhenUnlocked forKey:(__bridge id) kSecAttrAccessible];
    
//    the add part
    OSStatus status = SecItemAdd((__bridge CFDictionaryRef) dictionary, NULL);
    
//    if keychain adding was successful return
//    if not attempt to update existing key or quit (returns no)
    
    if (status == errSecSuccess) {
        return YES;
    }
    else if (status == errSecDuplicateItem)
    {
        return [self updateKeychainValue:value forIdentifier:identifier];
    }
    else
    {
        return NO;
    }
}


+(BOOL)updateKeychainValue:(NSString *)value forIdentifier:(NSString *)identifier
{
    NSMutableDictionary *searchdictionary, *updateDictionary;
    searchdictionary = [self setupSearchDirectoryForIdentifier:identifier];
    updateDictionary = [[NSMutableDictionary alloc] init];
    NSData *valueData = [value dataUsingEncoding:NSUTF8StringEncoding];
    [updateDictionary setObject:valueData forKey:(__bridge id) kSecValueData];
    
//    do update
    OSStatus status = SecItemUpdate((__bridge CFDictionaryRef) searchdictionary, (__bridge CFDictionaryRef) updateDictionary);
    
    if (status == errSecSuccess) {
        return YES;
        }
    else
    {
        
    return NO;
    }
}

+(void) deleteItemFromKeychainWithIdentifier:(NSString *)identifier
{
    NSMutableDictionary *searchDictionary = [self setupSearchDirectoryForIdentifier:identifier];
    CFDictionaryRef dictionary = (__bridge CFDictionaryRef) searchDictionary;
    
//    delete part
    SecItemDelete(dictionary);
}

+(BOOL) compareKeychainValueForMatchingPIN:(NSUInteger)pinHash
{
    if ([[self keychainStringFromMatchingIdentifier:PIN_SAVED] isEqualToString:[self securedSHA256DigestHashForPIN:pinHash ]]) {
        return YES;
        
    }
    else
    {
        NSLog(@"the password doesn't match!");
        return NO;
        
    }
}

#pragma mark - SHA256  Encrption Part

/*
 Passing in has of the PIN to manually avoid handling PIN itself.
 Add unique element to the has from username supplied from user 
 combine username, PIN hash, and secret key
 
This long 3 part hash is sent into the the below method ot create a Digital Digest (one way encryption key algorithm aka can't be reverse engineered)
 
 
 
*/

+(NSString*) securedSHA256DigestHashForPIN:(NSUInteger)pinHash
{
    NSString *name, *computedHashString, *finalHash;
    
    name = [[NSUserDefaults standardUserDefaults] stringForKey:USERNAME];
    name = [name stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    computedHashString = [NSString stringWithFormat:@" %@%i%@", name, pinHash, SALT_HASH];
  
    finalHash = [self computeSHA256DigestForString:computedHashString];
    
    NSLog(@"Computed hash is: %@ for the digest %@", computedHashString, finalHash);

    return finalHash;
}


// takes in hash and parses via C char array which goes through the SHA256 method
+(NSString*) computeSHA256DigestForString:(NSString *)input
{
    const char *cstr = [input cStringUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [NSData dataWithBytes:cstr length:input.length];
    uint8_t digest[CC_SHA256_DIGEST_LENGTH];
    
//    iOS 5 method that takes in data, how much, and output format
//    we're using an int array as the input
    CC_SHA256(data.bytes,
              data.length,
              digest);
    
//    setting up the Obj-C output
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_SHA256_DIGEST_LENGTH *2];
    
//    parse through the CC_SHA256 (result store insdie of digest[] array)
    for (int i = 0; i < CC_SHA256_DIGEST_LENGTH; i++) {
        [output appendFormat:@"%02x", digest[i]];
    }
    
    return output;
}


@end
