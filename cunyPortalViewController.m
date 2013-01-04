//
//  cunyPortalViewController.m
//  School_Appz
//
//  Created by Jason on 12/18/12.
//
//

#import "cunyPortalViewController.h"

@interface cunyPortalViewController ()

@end

@implementation cunyPortalViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) viewSetup
{
    NSString *website = @"https://cunyportal.cuny.edu/cpr/authenticate/portal_login.jsp";
    NSURL *url = [NSURL URLWithString:website];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [portalWebView loadRequest:request];
}

-(void) webViewDidStartLoad:(UIWebView *)webView
{
    if (webView.loading == YES) {
        [UIApplication sharedApplication]. networkActivityIndicatorVisible = YES;
    }
}


-(void) webViewDidFinishLoad:(UIWebView *)webView
{

//    webView = portalWebView;
    if (webView.loading == NO) {
        [UIApplication sharedApplication]. networkActivityIndicatorVisible = NO;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    portalWebView.delegate = self; // don't forget to set the delegate!
    self.navigationController.navigationBarHidden = NO;
    [self viewSetup];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    portalWebView = nil;
    [super viewDidUnload];
}
@end
