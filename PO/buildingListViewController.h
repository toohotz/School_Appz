//
//  buildingListViewController.h
//  School_Appz
//
//  Created by Jason on 11/5/12.
//
//

#import <UIKit/UIKit.h>

@class initialVC;

@interface buildingListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    UITableView *tableView;
    NSArray *buildings;
    UIView *buildingsView;
}
@end
