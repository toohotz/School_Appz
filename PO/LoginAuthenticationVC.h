//
//  LoginAuthenticationVC.h
//  PO
//
//  Created by Kemar White on 7/29/11.
//  Copyright 2011 J & J Corp. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LoginAuthenticationVC : UIViewController 
{
    IBOutlet UITextField *username;
    IBOutlet UITextField *password;
    
}
- (IBAction)closeKB:(id)sender;
- (IBAction)closeKBpass:(id)sender;
- (IBAction)loginPO:(id)sender;



@end
