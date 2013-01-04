//
//  CalendarVC.m
//  PO
//
//  Created by Jason on 8/25/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import "CalendarVC.h"

@interface CalendarVC ()

@end

@implementation CalendarVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}


#warning The caldendar view isn't reloading properly



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    webView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width
                                                       , self.view.bounds.size.height)];
    [webView setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:webView];
    
    [self backgroundSetup];
    

    
    self.navigationController.navigationBarHidden = NO;
    
    [webView addSubview:calendarWebView];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    calendarWebView = nil;
    website = nil;
    url = nil;
    request = nil;
    
    [super viewDidUnload];
}

#pragma mark - Background Setup

-(void) backgroundSetup
{

    
website = @"http://calendar.citytech.cuny.edu/ADCalendar/EventList.aspx?fromdate=8/25/2012&todate=9/23/2012&view=Summary";
    
    url = [NSURL URLWithString:website];
    
    // load queue only once in single run of app
    
      request = [NSURLRequest requestWithURL:url];
        [calendarWebView loadRequest:request];
    

    
//    release of the queue
    
}
- (IBAction)printScreen:(id)sender {
    
    
    
    
}
@end
