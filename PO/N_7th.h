//
//  N_7th.h
//  PO
//
//  Created by Jason on 9/2/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import <UIKit/UIKit.h>






@interface N_7th : UITableViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSArray *mathProfessors;
    
//    names of math professors
    N_7th *Africk, *Swaine, *Singh;
    UITableView *tableView;
    UIViewController *newProfessorView;
    
}

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *number;
@property (nonatomic) NSString *email;
@property (nonatomic) UIImage *icon;
@property (nonatomic) NSString *tableName;


@end
