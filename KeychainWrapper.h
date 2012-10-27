/*
 Class handles reading and writing from keychain
 Also manages the encryption generation methods
 
 
 */
#import <Foundation/Foundation.h>
#import <Security/Security.h>
#import <CommonCrypto/CommonHMAC.h>


@interface KeychainWrapper : NSObject

// generic method to search the keychain for a given value. 1 per result limit.
+(NSData*) searchKeychainCopyMatchingIdentifier:(NSString*) identifier;

// calls searchKeychainCopyMatchingIdentifier: and converts to a string value
+(NSString*) keychainStringFromMatchingIdentifier:(NSString*) identifier;

// compare passed in has val with hash val stored in keychain
// can be adjusted to take in the keychain key to look up the val
+(BOOL) compareKeychainValueForMatchingPIN:(NSUInteger) pinHash;

// default init to store a val in the keychain
// Associated properties are handled for you -
// setting Data Protection Access, Company Identifer (to uniquely identify string, etc).
+(BOOL)createKeychainValue:(NSString*) value forIdentifier:(NSString*) identifier;

// updates a val in the keychain.  If val is tried to be reset with createKeychainValue:
// and it exists, this method is called instead to update the val in place
+(BOOL) updateKeychainValue:(NSString*) value forIdentifier:(NSString*) identifier;

// deletes a val in the keychain
+(void) deleteItemFromKeychainWithIdentifier:(NSString*) identifier;

// generate an SHA256 hash
+(NSString*) securedSHA256DigestHashForPIN:(NSUInteger) pinHash;
+(NSString*) computeSHA256DigestForString:(NSString*) input;




@end
