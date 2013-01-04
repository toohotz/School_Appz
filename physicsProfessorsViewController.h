//
//  physicsProfessorsViewController.h
//  School_Appz
//
//  Created by Jason on 11/3/12.
//
//

#import <UIKit/UIKit.h>

@class N_ViewController;


@interface physicsProfessorsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

{
    UITableView *tableView;
    NSArray *professors;
    UIView *professorPage;
}

@end
