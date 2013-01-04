//
//  math_ProfessorsViewController.m
//  School_Appz
//
//  Created by Jason on 1/3/13.
//
//

#import "math_ProfessorsViewController.h"

@interface math_ProfessorsViewController ()

@end

@implementation math_ProfessorsViewController
@synthesize searchDisplay;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) addProfessorsInArray
{
    
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"Math_Professors_List" ofType:@"plist"];
    
    professors = [[NSArray alloc] initWithContentsOfFile:plistPath];
    _filteredTableData = [[NSMutableArray alloc] initWithArray:professors];
    
}

-(void) searchbarSetup
{
    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, self.view.bounds.origin.y, self.tableView.frame.size.width, 45)];
    searchBar.delegate = self;
    
    
    [self.view addSubview:searchBar];
    
//    search display stuff
    
    searchDisplay = [[UISearchDisplayController alloc] initWithSearchBar:searchBar contentsController:self];
    
    [self setSearchDisplay:searchDisplay];
    [searchDisplay setDelegate:self];
    [searchDisplay setSearchResultsDataSource:self];
    [self.tableView reloadData];
    self.tableView.scrollEnabled = YES;
}

-(void) searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    if ([searchText length] == 0) {
        [_filteredTableData removeAllObjects];
        [_filteredTableData addObject:professors];
    }
    
    else
    {
        [_filteredTableData removeAllObjects];
        
        for (NSString *string in professors) {
            // check if the string searched is in the professor's name
            NSRange range = [string rangeOfString:searchText options:NSCaseInsensitiveSearch];
            
            searchedText = [[NSString alloc] init];
            searchedText = searchText;
            
            if (range.location != NSNotFound) {
                [_filteredTableData addObject:string];
            }
        }
    }
    
    [self.tableView reloadData];
    
    NSLog(@"The selected cell is: %@", searchedText);
}


- (void)viewDidLoad
{
    [super viewDidLoad];
//    self.tableView.frame = CGRectMake(0, 45, self.view.bounds.size.width, self.view.bounds.size.height);
    
    
#warning table view not sizing with searchbar correctly
    
    [self.tableView setBounds:CGRectMake(0, self.view.bounds.origin.y+45, self.view.bounds.size.width, self.view.bounds.size.height)];
//    self.navigationController.navigationBarHidden = NO;

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    [self addProfessorsInArray];
    [self searchbarSetup];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [professors count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    
    //    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    NSString *name = [professors objectAtIndex:indexPath.row];
    cell.textLabel.text = name;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
//    some indexpath setting
    
    indexPath = [self.searchDisplayController.searchResultsTableView indexPathForSelectedRow];
    
    
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
