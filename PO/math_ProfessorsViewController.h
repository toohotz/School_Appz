//
//  math_ProfessorsViewController.h
//  School_Appz
//
//  Created by Jason on 1/3/13.
//
//

#import <UIKit/UIKit.h>

@interface math_ProfessorsViewController : UITableViewController <UISearchBarDelegate, UISearchDisplayDelegate>
{
    NSArray *professors;
    UISearchDisplayController *searchDisplay;
    NSString *searchedText;
}

@property (strong, nonatomic) NSMutableArray* allTableData;
@property (strong, nonatomic) NSMutableArray* filteredTableData;
@property (nonatomic, assign) bool isFiltered;
@property(nonatomic, retain) UISearchDisplayController *searchDisplay;

@end
