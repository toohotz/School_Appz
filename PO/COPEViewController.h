//
//  COPEViewController.h
//  School_Appz
//
//  Created by Jason on 11/13/12.
//
//

#import <UIKit/UIKit.h>
@class G_BuildingViewController;

@interface COPEViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    UITableView *tableView;
    NSArray *professors;
    UIView *professorPage;
}
@end
