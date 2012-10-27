//
//  testImageVC.m
//  PO
//
//  Created by Kemar White on 6/13/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import "testImageVC.h"


@interface testImageVC ()
{
    NSData *imageData;
}

@end

@implementation testImageVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
//    used to load queue once in a single run of app
    static BOOL dispatch_queue = NO;

    
    if (!dispatch_queue) {
        dispatch_queue = YES;
        backgroundQueue = dispatch_queue_create("com.apple.toohotz.PO", NULL);
  
    }
    
    [super viewDidLoad];

}

- (void)viewDidUnload
{
    welcomeLabel = nil;
    nameField = nil;
    imageView = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (IBAction)closeKB:(id)sender {
}

- (IBAction)getIm:(id)sender {

    imageName = nameField.text;
    imageUrl = [[NSURL alloc] initWithString:imageName];
    request = [[NSURLRequest alloc] initWithURL:imageUrl];
    
    dispatch_async(backgroundQueue, ^{
        download = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        
         results = [NSMutableData new];
    });
}


-(void)connection:(NSURLConnection*)connection didReceiveData:(NSData *)data
{
    [results appendData:data];
}

-(void)initializeVars
{
    imageName = nil;
    imageUrl = nil;
    request = nil;
    download = nil;
}

-(void)connectionDidFinishLoading:(NSURLConnection*)connection
{

    image = [[UIImage alloc] initWithData:results];
    [imageView setImage:image];
    
//    NSLog(@"The data received is %@",results);
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
   
    if (![imageName hasPrefix:@"http://"])
    {
        NSLog(@"%@ is not a valid address name", imageUrl);
    }
    
    
    else if (![imageName hasSuffix:@".png"]) {
        NSLog(@"%@ is not an image", imageUrl);
    }
    else if (![imageName hasSuffix:@".jpg"])
    {
        NSLog(@"%@ is not an image", imageUrl);
    }
  
    else
    {
        /*
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Ooops!" message:@"The connection has failed!" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil];
        [alert show];
        */
        NSLog(@"Connection has failed due to unknown error");
    }

}

-(void)dealloc
{
//    must always release queues!
//    dispatch_release no longer works due to ARC
//    dispatch_release(backgroundQueue);

    
}











@end
