//
//  constructionCivilEngineeringProfessorsViewController.m
//  School_Appz
//
//  Created by Jason on 1/3/13.
//
//

#import "constructionCivilEngineeringProfessorsViewController.h"
#import "constructionCivilEngineeringPageVC.h"

#define AMERSTERDAM 0
#define CIOFFI 1
#define MEYER 2
#define SANTIAGO 3
#define STEGMAIER 4


@interface constructionCivilEngineeringProfessorsViewController ()

@end

@implementation constructionCivilEngineeringProfessorsViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) professorsListSetup
{
    NSString *professorListPath = [[NSBundle mainBundle] pathForResource:@"constructionCivilEngineering_List" ofType:@"plist"];
    professors = [[NSArray alloc] initWithContentsOfFile:professorListPath];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    [self professorsListSetup];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

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
    // Navigation logic may go here. Create and push another view controller.
    
     constructionCivilEngineeringPageVC *detailViewController = [[constructionCivilEngineeringPageVC alloc] init];

    if (indexPath.row == AMERSTERDAM) {
        detailViewController.selection = AMERSTERDAM;
    }
    
    if (indexPath.row == CIOFFI) {
        detailViewController.selection = CIOFFI;
    }
    
    if (indexPath.row == MEYER)
    {
        detailViewController.selection = MEYER;
    }
    
    if (indexPath.row == SANTIAGO) {
        detailViewController.selection = SANTIAGO;
    }
    
    if (indexPath.row == STEGMAIER) {
        detailViewController.selection = STEGMAIER;
    }
    
    
     [self.navigationController pushViewController:detailViewController animated:YES];
     
}

@end
