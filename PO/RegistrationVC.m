//
//  RegistrationVC.m
//  PO
//
//  Created by Kemar White on 7/27/11.
//  Copyright 2011 J & J Corp. All rights reserved.
//

#import "RegistrationVC.h"
#import "KeychainWrapper.h"


@implementation RegistrationVC
@synthesize pinValidated = _pinValidated;




- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        

    }
    
    
    return self;
}



- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    
    UISwipeGestureRecognizer *leftRecognizer;
    leftRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeFromLeft:)];
    [leftRecognizer setDirection:UISwipeGestureRecognizerDirectionLeft];
    [[self view] addGestureRecognizer:leftRecognizer];
    
    

    _pinValidated = NO;
    
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"register.png"]];
    self.navigationController.navigationBarHidden = NO;
   
//    alert view
    
//    [self presentAlertViewForPassword];
    
    /* gestures */

    
    [self cloudAnimation];
    [super viewDidLoad];
    
}

#pragma mark - Gestures

-(void)swipeFromLeft:(UISwipeGestureRecognizer*) leftRecognizer
{
    NSLog(@"The left swipe was received");
    
    
    //    check fields
    if ([getzUser.text isEqualToString:@""] || getzUser.text == nil || [getzPass.text isEqualToString:@""] || getzPass.text ==nil) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error!" message:@"You have left a field blank" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil];
        [alert show];
        
    }
    else {
        av = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
        [av setCenter:self.view.center];
        av.tag = 1;
        [self.view addSubview:av];
        [av startAnimating];
        
        
        
        
        
        [self performSegueWithIdentifier:@"DOB_Email" sender:self];
    }
    
    
}



#pragma mark - Cloud animation


-(void)cloudAnimation
{
   
        //    Cloud setup
        
        cloudImage = [UIImage imageNamed:@"cloud.png"];
        cloud = [CALayer layer];
        cloud.contents = (id)cloudImage.CGImage;
        cloud.bounds = CGRectMake(0,0,cloudImage.size.width, cloudImage.size.height);
        cloud.position = CGPointMake(self.view.bounds.size.width / 2, cloudImage.size.height / 2);
        
        [self.view.layer addSublayer:cloud];
        
        //    cloud animation
        
        startPoint = CGPointMake(self.view.bounds.size.width + cloud.bounds.size.width / 2, cloud.position.y);
        endPoint = CGPointMake(cloud.bounds.size.width / -2, cloud.position.y);
        
        animation = [CABasicAnimation animationWithKeyPath:@"position"];
        animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
        animation.fromValue = [NSValue valueWithCGPoint:startPoint];
        animation.toValue = [NSValue valueWithCGPoint:endPoint];
        animation.repeatCount = HUGE_VALF;
        animation.duration = 6.0;
        
        [cloud addAnimation:animation forKey:@"position"];
        


    
}


#pragma mark -


- (void)viewDidUnload
{
    
    getzUser = nil;
    
    getzPass = nil;
    swipeLeft = nil;
    [self.view.layer removeAllAnimations];
    [super viewDidUnload];

    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Textfield cleanups

- (IBAction)setzUser:(id)sender {
}

- (IBAction)setzPass:(id)sender {
}


- (IBAction)loginPO:(id)sender {
// Server side auth with PO login

}

- (IBAction)goDOB:(id)sender {
    
    
    
//    check fields
    if ([getzUser.text isEqualToString:@""] || getzUser.text == nil || [getzPass.text isEqualToString:@""] || getzPass.text ==nil) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error!" message:@"You have left a field blank" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil];
        [alert show];
        
    }
    else {
        av = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
        [av setCenter:self.view.center];
        av.tag = 1;
        [self.view addSubview:av];
        [av startAnimating];
        sleep(1);
        
        
        
        
        [self performSegueWithIdentifier:@"DOB_Email" sender:self];
    }
    
    
    
   
    
}

#pragma mark - Alert for password

-(void)presentAlertViewForPassword
{

    BOOL hasPin = [[NSUserDefaults standardUserDefaults] boolForKey:PIN_SAVED];
    

    if (hasPin) { // check if user has pin
        NSString *user = [[NSUserDefaults standardUserDefaults] stringForKey:USERNAME];
        
        NSString *message = [NSString stringWithFormat:@"Enter %@'s password",user];
        
//        need to resize alert view for password field
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Enter Password" message:message delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Done", nil];
        

        [alert setAlertViewStyle:UIAlertViewStyleSecureTextInput]; // gives password field
        
        alert.tag = kAlertTypePIN;
        
        UITextField *pinField = [alert textFieldAtIndex:0];
        pinField.delegate = self;
        pinField.autocapitalizationType = UITextAutocapitalizationTypeWords;
        pinField.autocorrectionType = UITextAutocorrectionTypeNo;
        pinField.tag = kTextFieldPIN;
        [alert show];
      
    }
    
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Setup" message:@"Time to make things secure" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Done", nil];
        
        [alert setAlertViewStyle:UIAlertViewStyleLoginAndPasswordInput];
        alert.tag = kAlertTypeSetup;
        UITextField *nameField = [alert textFieldAtIndex:0];
        nameField.autocorrectionType = UITextAutocorrectionTypeNo;
        nameField.placeholder = @"Enter Username";
        nameField.delegate = self;
        nameField.tag = kTextFieldName;
        UITextField *passwordField = [alert textFieldAtIndex:1];
        passwordField.delegate = self;
        passwordField.tag = kTextFieldPassword;
        [alert show];
    }
}









#pragma mark - Saving data

-(void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:getzPass.text forKey:@"password"];
    [aCoder encodeObject:getzUser.text forKey:@"user"];
}


#pragma mark - VC Error section


// load data back from disk
/*
-(id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [self init]) {
        [self setzUser: [aDecoder decodeObjectForKey:@"user"]];
        [self setzPass: [aDecoder decodeObjectForKey:@"password"]];
    }
    return self;
}

*/

#pragma mark -   

-(NSString*)savePath
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSMutableString *path = [[NSMutableString alloc] init];
    paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    [path appendString: [paths objectAtIndex:0]];
    [path appendString: @"/PO"];
    
    NSError *error;
    
    if ([fileManager fileExistsAtPath:path] == NO) {
        [fileManager createDirectoryAtPath:path withIntermediateDirectories:NO attributes:nil error:&error];
    }
    NSString *fileName = @"data";

    return [path stringByAppendingPathComponent:fileName];
   
}

-(void)saveData
{
    getzPass.text = passwordName;   getzUser.text = userName;
    keys = [[NSArray alloc] initWithObjects:passwordName, userName, nil];
    
    
    NSMutableString *path = [[NSMutableString alloc] init];
    paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    [path appendString: [paths objectAtIndex:0]];
    [path appendString: @"/PO"];
    
    
    NSMutableDictionary *rootObj = [NSMutableDictionary dictionary];
//    [rootObj setValue:keys forKey:@"login"];
    
    [rootObj setObject:userName forKey:@"user"];
    [rootObj setObject:passwordName forKey:@"password"];
    
    
    [NSKeyedArchiver archiveRootObject:rootObj toFile:path];
    
    if (rootObj != nil) {
        NSLog(@"File successfully stored!");
    }
    else
    {
        NSLog(@"File was not stored properly!");
    }
}

-(void)loadData
{
    NSMutableString *path = [[NSMutableString alloc] init];
    paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    [path appendString: [paths objectAtIndex:0]];
    [path appendString: @"/PO"];
    
    
    NSDictionary *rootObj;
    
    rootObj = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    
    

    
}



//  used to get PIN and name fields for validation
// used for first time setup
#pragma mark - Check credentials
-(BOOL)credentialsIsValidated

{
    NSString *name = [[NSUserDefaults standardUserDefaults] stringForKey:userName];
    BOOL pin = [[NSUserDefaults standardUserDefaults] boolForKey:PIN_SAVED];
    
    if (name && pin)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}


#pragma mark - Alert view handling

-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    
    
    
    /* ##### OLD CODE */
    
    if (alertView.tag == kAlertTypePIN)
    {   // check if done was pressed and credentials are valid
        
        if (buttonIndex == 1 && _pinValidated) // user selected the "Done" option
        {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"SUccess!" message:@"Your pin in valid" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles: nil];
            [alert show];
//            _pinValidated = NO;
            self.pinValidated = NO;
        }
        else // User pressed Cancel
        {
            [self presentAlertViewForPassword];
        }
    }
        else if (alertView.tag == kAlertTypeSetup)
{
    if (buttonIndex == 1 && [self credentialsIsValidated]) // user selected done
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Good!" message:@"You selected the Done button" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles: nil];
        [alert show];
        NSLog(@"Done button was pressed");
    }
    else // selected cancel
    {
        [self presentAlertViewForPassword];
    }
    
}


}

//  pin validation
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    switch (textField.tag)
    {
        case kTextFieldPIN: // go here if more than 2nd time used
                            // already setup a pin at setup
            NSLog(@"User entered PIN to valida");
            
            if ([textField.text length] > 0)
            {
                NSUInteger fieldHash = [textField.text hash]; // gets the hash of the entered pin
                                                              // minimizes contact with the actual password
                if ([KeychainWrapper compareKeychainValueForMatchingPIN:fieldHash]) // compare them
                {
                    NSLog(@"User was authenticated");
                    _pinValidated = YES;
                }
                else
                {
                    NSLog(@"Wrong password entered");
                    _pinValidated = NO;
                }
                
            }
break;

case kTextFieldName: // first part of setup
NSLog(@"user entered name");
    if ([textField.text length] > 0)
{
    [[NSUserDefaults standardUserDefaults] setValue:textField.text forKey:USERNAME];
    [[NSUserDefaults standardUserDefaults] synchronize]; // updates any changes
}

break;

case kTextFieldPassword: // 2nd part of setup
NSLog(@"user entered PIN");
    if ([textField.text length] > 0)
{
    NSUInteger fieldHash = [textField.text hash];
    
    NSString *fieldString = [KeychainWrapper securedSHA256DigestHashForPIN:fieldHash];
    NSLog(@" Password Hash - %@", fieldString);
    
//    save pin hash to keychain
//    don't store to direct pin ever
    
    if ([KeychainWrapper createKeychainValue:fieldString forIdentifier:PIN_SAVED])
    {
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:PIN_SAVED];
        [[NSUserDefaults standardUserDefaults] synchronize];
        NSLog(@"Key successfully saved to keychain");
    }
}

    break;

default:

    break;



//
}

}



@end


