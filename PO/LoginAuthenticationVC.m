//
//  LoginAuthenticationVC.m
//  PO
//
//  Created by Kemar White on 7/29/11.
//  Copyright 2011 J & J Corp. All rights reserved.
//

#import "LoginAuthenticationVC.h"

@implementation LoginAuthenticationVC

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
/*
- (void)viewDidLoad
{
   
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    
    username = nil;
   
    password = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (IBAction)closeKB:(id)sender {
}

- (IBAction)closeKBpass:(id)sender {
    
}

#pragma mark - Check Login Credentials

- (IBAction)loginPO:(id)sender {
//    Create username and password strings
    NSString *userPass = [NSString stringWithFormat:@"?username=%@&password=%@", username.text, password.text];

//    Create URL where the php page is stored
//    Fill in the @"" fields wih the appropriate information
    NSString *phpLocation = @"";
    
//    Combine the username and password string with the URL string in one to perform the POST the variable to the page by URL

    phpLocation = [phpLocation stringByAppendingFormat:userPass];

    
//    Resultdata from the URL
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:phpLocation]];
    
//    Convert result pagedata into a string
    NSString *outputData = [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
    
//    Password and username credientials check
    if ([outputData isEqualToString:@"Yes"]) {
        UIAlertView *successfulLogin = [[UIAlertView alloc] initWithTitle:@"Thank You!" message:@"You have successfully logged in!" delegate:self cancelButtonTitle:@"Proceed" otherButtonTitles:nil];
        [successfulLogin show];
        /* need a redirect to a page after the credentials go through */
    } else {
        UIAlertView *unsuccessfulLogin = [[UIAlertView alloc] initWithTitle:@"Oops!" message:@"Your username and/or password is incorrect!" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil];
        [unsuccessfulLogin show];
    }
    
}
@end
