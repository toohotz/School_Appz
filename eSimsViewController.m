//
//  eSimsViewController.m
//  School_Appz
//
//  Created by Jason on 12/3/12.
//
//

#import "eSimsViewController.h"
#import "initialVC.h"


@interface eSimsViewController ()

@end

@implementation eSimsViewController

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
//    self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;

    
    webViewz = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width
                                                       , self.view.frame.size.height)];
    [webViewz setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:webViewz];
    
    
    [self webPageLoadup];
    [self activityIndicatorSetup];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) webPageLoadup
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





@end
