//
//  CalendarVC.h
//  PO
//
//  Created by Jason on 8/25/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import <UIKit/UIKit.h>
@class N_ViewController, M_BuildingViewController, V_BuildingViewController, G_BuildingViewController, P_BuildingViewController, A_BuildingViewController, initialVC;


@interface CalendarVC : UIViewController 


{
    
    IBOutlet UIWebView *calendarWebView;
    NSURL *url;
    NSString *website, *notificationName;
    NSURLRequest *request;
    dispatch_queue_t backgroundQueue;
    UIView *webView;
    
}
- (IBAction)printScreen:(id)sender;



@end
