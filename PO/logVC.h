//
//  logVC.h
//  PO
//
//  Created by Kemar White on 10/18/11.
//  Copyright (c) 2011 J & J Corp. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface logVC : UIViewController <NSURLConnectionDelegate>
{
     IBOutlet UITextField *username;
     IBOutlet UITextField *password;
    IBOutlet UIButton *loginBtn;
    
    
    
    
//    Gestures
    CGPoint startGesturePoint, endGesturePoint;
    UITouch *touch;
    CGFloat x,y;
    CGPoint touchLocation;
    
}


- (IBAction)userKBClose:(id)sender;
- (IBAction)passKBClose:(id)sender;
- (IBAction)testConnection:(id)sender;
- (IBAction)login:(id)sender;





@end
