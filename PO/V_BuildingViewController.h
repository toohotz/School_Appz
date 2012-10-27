//
//  V_BuildingViewController.h
//  PO
//
//  Created by Jason on 8/18/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import <UIKit/UIKit.h>
@class buildingsViewController;


@interface V_BuildingViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    UITableView *tableView;
    NSArray* V_floors;
}
@end
