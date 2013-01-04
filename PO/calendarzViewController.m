//
//  calendarzViewController.m
//  School_Appz
//
//  Created by Jason on 12/18/12.
//
//

#import "calendarzViewController.h"

@interface calendarzViewController ()

@end

@implementation calendarzViewController

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
  NSString *website = @"http://calendar.citytech.cuny.edu/ADCalendar/EventList.aspx?fromdate=8/25/2012&todate=9/23/2012&view=Summary";
    
    NSURL *url = [NSURL URLWithString:website];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [calendarWebView loadRequest:request];

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
    calendarWebView.delegate = self;
    self.navigationController.navigationBarHidden = NO;
    [self viewSetup];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    calendarWebView = nil;
    [super viewDidUnload];
}
@end
