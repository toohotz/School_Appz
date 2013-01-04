//
//  CSTProfessorsViewController.h
//  School_Appz
//
//  Created by Jason on 11/4/12.
//
//

#import <UIKit/UIKit.h>

@class  N_ViewController;

@interface CSTProfessorsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    UITableView *tableView;
    NSArray *professors;
    UIView *professorPage;
}

@end
