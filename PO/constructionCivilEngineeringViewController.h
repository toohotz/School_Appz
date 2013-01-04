//
//  constructionCivilEngineeringViewController.h
//  School_Appz
//
//  Created by Jason on 11/15/12.
//
//

#import <UIKit/UIKit.h>

@class V_BuildingViewController;

@interface constructionCivilEngineeringViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    UITableView *tableView;
    NSArray *professors;
    UIView *professorPage;
}
@end
