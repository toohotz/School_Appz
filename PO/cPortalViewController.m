//
//  cPortalViewController.m
//  PO
//
//  Created by Jason on 9/25/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import "cPortalViewController.h"

@interface cPortalViewController ()

@end

@implementation cPortalViewController

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
    [super viewDidLoad];
    
    self.navigationController.navigationBarHidden = NO;
   
    NSString *CUNYPortal;
    NSURLRequest *request;
    NSURL *url;
    

    
    [self webPageLoadup:CUNYPortal :url :request];
    [self activityIndicatorSetup];

	// Do any additional setup after loading the view.
}




-(void) webPageLoadup:(NSString*) websitez:(NSURL*) theURLz:(NSURLRequest*) theRequest
{
    
   
    
//    needed to set delegate to self to use delegate methods
    
    theWebView.delegate = self;
    
    dispatch_queue_t bgLoadingQueue = dispatch_queue_create("com.apple.PO.MyQueue", NULL);

    dispatch_async(bgLoadingQueue, ^{
        __block NSString* website = @"https://cunyportal.cuny.edu/cpr/authenticate/portal_login.jsp";
        
        __block NSURL* theURL = [NSURL URLWithString:website];
        
        __block NSURLRequest* theRequest = [NSURLRequest requestWithURL:theURL];
        [theWebView loadRequest:theRequest];
    });
    
    dispatch_release(bgLoadingQueue);
    
}

-(void) activityIndicatorSetup
{
    [UIApplication sharedApplication]. networkActivityIndicatorVisible = YES;

    
}

-(void) webViewDidFinishLoad:(UIWebView *)webView
{
    if (webView.loading == NO) {

//        used shared app network indication for status bar progress loading
        [UIApplication sharedApplication]. networkActivityIndicatorVisible = NO;
    }
    webView = theWebView;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    theWebView = nil;
    [super viewDidUnload];
}
@end
