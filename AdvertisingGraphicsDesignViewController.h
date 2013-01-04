//
//  AdvertisingGraphicsDesignViewController.h
//  School_Appz
//
//  Created by Jason on 11/10/12.
//
//

#import <UIKit/UIKit.h>
@class AdvertisingGraphicsDesignViewController, G_BuildingViewController;

@interface AdvertisingGraphicsDesignViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    UITableView *tableView;
    NSArray *professors;
    UIView *professorPage;
}
@end
