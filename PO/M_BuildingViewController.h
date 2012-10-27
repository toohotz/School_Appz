//
//  M_BuildingViewController.h
//  PO
//
//  Created by Jason on 8/18/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import <UIKit/UIKit.h>

@class buildingsViewController;


@interface M_BuildingViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSArray* M_floors;
    UITableView *tableView;
}

@end
