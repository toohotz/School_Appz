//
//  logVC.m
//  PO
//
//  Created by Kemar White on 10/18/11.
//  Copyright (c) 2011 J & J Corp. All rights reserved.
//

#import "logVC.h"

@implementation logVC



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
      
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"loginpic.png"]];
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    username = nil;
    password = nil;
    
   
    loginBtn = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}


- (IBAction)userKBClose:(id)sender {
}

- (IBAction)passKBClose:(id)sender {
}

#pragma mark - Test PO Connection
id receivedData;
- (IBAction)testConnection:(id)sender {
//    creat reqyest
    NSURLRequest *getPO = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.peerover.com"]
                                           cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:69];
    
    // create connection with request and start loading data
    
    NSURLConnection *connectPO = [[NSURLConnection alloc] initWithRequest:getPO delegate:self];
    
    if (connectPO) {
        NSLog(@"You have connected to the peerover.com");
        
        receivedData = [NSMutableData data];
    } else {
// connection has failed
        NSLog(@"Connection has failed!");
    }
}

#pragma mark - Check Login Credentials

-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    //    method for when server has determined it has enough info to create NSURLResponse receivedData again is declared elsewhere
    [receivedData setLength:0]; 
    //    Resets the data like or a redirect case
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    //    appends the new data to the receivedData(which is an instance variable declared elsewhere)
    [receivedData appendData:data];
    //    Can also be used to indication connection progress to the user
}

/* Releases connection and any received data and logs the error if received */

/* If an error is encountered during the download, the delegate receives a connection:didFailWithError: message. The NSError object passed as the parameter specifies the details of the error. It also provides the URL of the request that failed in the user info dictionary using the key NSURLErrorFailingURLStringErrorKey.
 
 After the delegate receives a message connection:didFailWithError:, it receives no further delegate messages for the specified connection.
 */

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    //    release the connection and data object
    /* Note ARC auto releases so it might release the connection when error is occured */
    
    //    inform user
    NSLog(@"Connection has failed! Error - %@ %@", [error localizedDescription], [[error userInfo] objectForKey:NSURLErrorFailingURLErrorKey]);
}

/* Log the length of the received data and ARC is to auto release the objects */
-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    //    Do something with the data
    NSLog(@"Succeeded! Received %d bytes of data", [receivedData length]); 
    
}

#pragma mark - Login

- (IBAction)login:(id)sender {
    //    Create username and password strings
    NSString *userPass = [NSString stringWithFormat:@"?username=%@&password=%@", username.text, password.text];
    
    //    Create URL where the php page is stored ie. www.peerover.com/index.php
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

#pragma mark - Touch gestures

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
touch = [touches anyObject];
startGesturePoint = [touch locationInView:self.view];

x = startGesturePoint.x;
y = startGesturePoint.y;




}


-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    touch = [touches anyObject];
    touchLocation = [touch locationInView:self.view];
    x = touchLocation.x;
    y = touchLocation.y;
    
    
}


-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    touch = [touches anyObject];
    endGesturePoint = [touch locationInView:self.view];

//    Do something when touch happens!
}






@end
