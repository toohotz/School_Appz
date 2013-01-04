//
//  New_Student_ListViewController.h
//  School_Appz
//
//  Created by Jason on 11/13/12.
//
//

#import <UIKit/UIKit.h>
@class N_ViewController;

@interface New_Student_ListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    UITableView *tableView;
    NSArray *professors;
    UIView *professorPage;
}
@end
