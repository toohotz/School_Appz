//
//  mathProfessorsViewController.h
//  School_Appz
//
//  Created by Jason on 11/2/12.
//
//

#import <UIKit/UIKit.h>

@class N_ViewController;

@interface mathProfessorsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    UITableView *tableView;
    NSArray *professors;
    UIView *professorPage;
    
}


@end
