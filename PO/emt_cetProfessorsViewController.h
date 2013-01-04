//
//  emt_cetProfessorsViewController.h
//  School_Appz
//
//  Created by Jason on 1/3/13.
//
//

#import <UIKit/UIKit.h>

@interface emt_cetProfessorsViewController : UITableViewController
{
    NSArray* professors;
    int choice;
    

    
}
@property (nonatomic, assign) int selection;
@property  (retain, nonatomic) NSNumber *myCount;

@end
