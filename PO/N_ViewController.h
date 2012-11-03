//
//  N_ViewController.h
//  PO
//
//  Created by Jason on 9/14/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import <UIKit/UIKit.h>
@class buildingsViewController, N_7th, N_6th, N_5th, mathProfessorsViewController;

@interface N_ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

{
    UITableView *tableView;
    NSArray *Floors_N;
}

@end
