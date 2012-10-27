//
//  LoginVC.h
//  PO
//
//  Created by Kemar White on 7/23/11.
//  Copyright 2011 J & J Corp. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LoginVC : UIViewController <NSURLConnectionDelegate>
{
    IBOutlet UITextField *username;
 
    IBOutlet UITextField *password;
    
}


- (IBAction)goApple:(id)sender;








@end
