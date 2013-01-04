//
//  mathProfessorsViewController.h
//  School_Appz
//
//  Created by Jason on 11/2/12.
//
//

#import <UIKit/UIKit.h>

@class N_ViewController;

@interface mathProfessorsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate, UISearchDisplayDelegate>
{
    UITableView *tableView;
    NSArray *professors;
    UIView *professorPage;
    NSMutableArray* allTableData;
    NSMutableArray* filteredTableData;
    UISearchDisplayController *searchDisplay;
    
    NSString *searchedText;
    

}

@property (strong, nonatomic) NSMutableArray* allTableData;
@property (strong, nonatomic) NSMutableArray* filteredTableData; 
@property (nonatomic, assign) bool isFiltered;
@property(nonatomic, retain) UISearchDisplayController *searchDisplay;

@end
