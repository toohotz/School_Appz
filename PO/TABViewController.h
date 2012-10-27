//
//  TABViewController.h
//  PO
//
//  Created by Jason on 8/10/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import <UIKit/UIKit.h>

//@class BFViewController;

@interface TABViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSArray *buildings, *buildingDescription;
    IBOutlet UITableView *myTVC;
    UIViewController *tabVC;
    
//    N_BuildingViewController *N_floors;
//    NSArray *Floors_N, *Floors_A, *Floors_V, *Floors_M, *Floors_G, *Floors_P;
    
 
}


@property(nonatomic) NSArray *floors;
@property(nonatomic) UITableView *myTVC;
@property(nonatomic) UIViewController *tabVC;

@property int selectionInt;


@end
