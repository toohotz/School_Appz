//
//  LoginVC.m
//  PO
//
//  Created by Kemar White on 7/23/11.
//  Copyright 2011 J & J Corp. All rights reserved.
//

#import "LoginVC.h"

@implementation LoginVC

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

-(void)viewDidAppear:(BOOL)animated
{
//    NSString *connected = [NSString stringWithContentsOfURL:[NSURL URLWithString:@"http://www.apple.com"]];
    NSInteger waitTime = 30000;
    
    
    wait(&waitTime);
    /*
//    Check if connection is alive
    if (connected == NULL) {
        NSLog(@"Connection is not alive!");
    } else {
        NSLog(@"Connected - %@", connected);
    }
     */
}

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"register.png"]];
        self.navigationController.navigationBarHidden = NO;
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    

    self.view.backgroundColor = nil;
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




#pragma mark - Test Apple Connection
id receivedData;
- (IBAction)goApple:(id)sender {
    
    // Creates the request
    NSURLRequest *getApple = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.apple.com/"] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:69.0];
    // create connection with the reuest and start loading of the data
    
    NSURLConnection *connectToApple= [[NSURLConnection alloc] initWithRequest:getApple delegate:self];
    
    if (connectToApple) {
        // Create the mutabledata to hold data that will be received data
        //        one instance variable that is declared elsewhere
        
        receivedData = [NSMutableData data];
        
    } else {
        // Tell uesr the connection failed
        NSLog(@"Error! Connection has failed!");

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
@end
