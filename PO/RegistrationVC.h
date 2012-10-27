//
//  RegistrationVC.h
//  PO
//
//  Created by Kemar White on 7/27/11.
//  Copyright 2011 J & J Corp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <dispatch/dispatch.h>

// used to save NSUserDefaults that a pin has been set and a UId for the Keychain
#define PIN_SAVED @"hasSavedPin"

// used to save user's name to NSUD
#define USERNAME @"username"

// specify the app used in accessing the Keychain
#define APP_NAME [[[NSBundle mainBundle] infoDictionary] objectForKey@"CFBundleIdentifier"]

// securing of pin (key standardized to avoid complexity and overhead)
// keep a secret
#define SALT_HASH @"FvTivqTqZXsgLLx1v3P8TGRyVHaSOB1pvfm02wvGadj7RLHV8GrfxaZ84oGA8RsKdNRpxdAojXYg9iAj"

// typedef used to make code easier to read
typedef enum {
    kAlertTypePIN = 0,
    kAlertTypeSetup
} AlertTypes;

typedef enum {
    kTextFieldPIN = 1,
    kTextFieldName,
    kTextFieldPassword
} TextFieldTypes;


@class KeychainWrapper;

@interface RegistrationVC : UIViewController <UIGestureRecognizerDelegate, NSCoding, UITextFieldDelegate, UIAlertViewDelegate>
{
    IBOutlet UITextField *getzUser;
    IBOutlet UITextField *getzPass;
    
    
    UIImage *cloudImage;
    CALayer *cloud;
    CGPoint startPoint, endPoint;
    CABasicAnimation *animation;
    UIActivityIndicatorView *av;
    NSArray *keys, *paths;
    NSString *plistName, *userName, *passwordName;
    dispatch_queue_t backgroundQueue;
    
    IBOutlet UISwipeGestureRecognizer *swipeLeft;
    
    
    
}
// properties

@property(nonatomic) BOOL pinValidated;



//actions

- (IBAction)setzUser:(id)sender;
- (IBAction)setzPass:(id)sender;

- (IBAction)loginPO:(id)sender;
- (IBAction)goDOB:(id)sender;

// saving data
-(NSString*)savePath;
-(void)saveData;
-(void)loadData;
-(void)cloudAnimation;


@end
