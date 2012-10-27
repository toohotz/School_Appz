//
//  testProfViewController.m
//  PO
//
//  Created by Jason on 9/28/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import "testProfViewController.h"

@interface testProfViewController ()
{
    IBOutlet UITextView *phoneNumber;

    
}
@end

@implementation testProfViewController

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

    UIImageView *iconImageView;
    UILabel *someLable = [[UILabel alloc] initWithFrame:CGRectMake(15, 40, 188, 23)];
    UILabel *telephoneLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 211, 86, 21)];
    UILabel *emailLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 273, 86, 21)];
    UITextView *email = [[UITextView alloc] initWithFrame:CGRectMake(15, 310, 190, 50)];
    
    iconImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 50, 110, 116)];
    
//    telephone lable setting
    [telephoneLabel setText:@"Telephone:"];
    [telephoneLabel setTextColor:[UIColor colorWithRed:(100/255.f) green:(149/255.f) blue:(237/255.f) alpha:1]]; // coral blue
    
    
//    email label setting
    [emailLabel setText:@"Email:"];
    [emailLabel setTextColor:[UIColor colorWithRed:(100/255.f) green:(149/255.f) blue:(237/255.f) alpha:1]];
    
//    set email settings
    [email setText:@"hafrick@citytech.cuny.edu"];
    [email setDataDetectorTypes:UIDataDetectorTypeLink];
    [email setEditable:NO];
//    telephone number
    UITextView *telephone = [[UITextView alloc] initWithFrame:CGRectMake(15, 249, 190, 34)];
    
    
    
    [telephone setText:@"1.718.260.5380"];
    [telephone setDataDetectorTypes:UIDataDetectorTypePhoneNumber];
    
    [telephone setEditable:NO];
    [someLable setText:@"Dr. Har Har"];
    
    
    
    
    
    
    NSString *iconString = @"http://websupport1.citytech.cuny.edu/faculty/hafrick/images/henry.jpg";
    NSURL *iconURL = [[NSURL alloc] initWithString:iconString];
    NSData *iconData = [NSData dataWithContentsOfURL:iconURL];
    UIImage *icon = [[UIImage alloc] initWithData:iconData];
    iconImageView.image = icon;
    

//    professorIcon.image = icon;
    
//    font formatting
    
    
    someLable.font = [UIFont fontWithName:@"TrebuchetMS-Bold" size:18];
    
    
    
//    adding to view
    
    [self.view addSubview:iconImageView];
    [self.view addSubview:someLable];
    [self.view addSubview:telephone];
    [self. view addSubview:telephoneLabel];
    [self.view addSubview:emailLabel];
    [self.view addSubview:email];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    professorIcon = nil;
    
    phoneNumber = nil;
    [super viewDidUnload];
}
@end
