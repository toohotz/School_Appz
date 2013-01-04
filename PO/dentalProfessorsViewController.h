//
//  dentalProfessorsViewController.h
//  School_Appz
//
//  Created by Jason on 11/9/12.
//
//

#import <UIKit/UIKit.h>

@class P_BuildingViewController;

@interface dentalProfessorsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    UITableView *tableView;
    NSArray *professors;
    UIView *professorPage;
}

@end
