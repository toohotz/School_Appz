//
//  buildingsViewController.h
//  PO
//
//  Created by Jason on 8/29/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import <UIKit/UIKit.h>

@class N_ViewController, A_BuildingViewController, M_BuildingViewController, V_BuildingViewController, P_BuildingViewController, G_BuildingViewController, A_BuildingViewController, NewViewController, initialVC;


@interface buildingsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
     NSArray *buildings, *buildingDescription;
    UITableView *tableView;
}
@end
