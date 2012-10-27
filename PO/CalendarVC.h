//
//  CalendarVC.h
//  PO
//
//  Created by Jason on 8/25/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalendarVC : UIViewController 

{
    
    IBOutlet UIWebView *calendarWebView;
    NSURL *url;
    NSString *website, *notificationName;
    NSURLRequest *request;
    dispatch_queue_t backgroundQueue;
    
}
- (IBAction)printScreen:(id)sender;



@end
