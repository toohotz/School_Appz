//
//  NewViewController.h
//  PO
//
//  Created by Jason on 9/10/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface NewViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
{

    UITableView *tableView;
    IBOutlet UITableView *myTV;
    NSArray *Floors_N;
}


@property(nonatomic,retain) IBOutlet UITableView *myTV;
@end
