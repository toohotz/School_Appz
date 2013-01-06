//
//  mechanicalEngineeringProfessorsViewController.m
//  School_Appz
//
//  Created by Jason on 1/6/13.
//
//

#import "mechanicalEngineeringProfessorsViewController.h"
#import "mechanicalEngineeringVC.h"

#define BENNANI 0
#define BERRI 1
#define HOLLAND 2
#define RYU 3
#define STYSH 4
#define VAISMAN 5
#define ZHANG 6



@interface mechanicalEngineeringProfessorsViewController ()

@end

@implementation mechanicalEngineeringProfessorsViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}


-(void) professorSetup
{

    
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"MechanicalEngineeringTechnologyProfessors" ofType:@"plist"];
    professors = [[NSArray alloc] initWithContentsOfFile:plistPath];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self professorSetup];

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

-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *sectionName = @"Select a professor";
    
    return sectionName;
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
 

     mechanicalEngineeringVC *detailViewController = [[mechanicalEngineeringVC alloc] init];
   
    if (indexPath.row == BENNANI) {
        detailViewController.selection = BENNANI;
    }
    
    if (indexPath.row == BERRI) {
        detailViewController.selection = BERRI;
    }
    
    if (indexPath.row == HOLLAND)
    {
        detailViewController.selection = HOLLAND;
    }
    
    if (indexPath.row == RYU) {
        detailViewController.selection = RYU;
    }
    
    if (indexPath.row == STYSH) {
        detailViewController.selection = STYSH;
        
    }
    
    if (indexPath.row == VAISMAN) {
        detailViewController.selection = VAISMAN;
        
    }
    
    if (indexPath.row == ZHANG) {
        detailViewController.selection = ZHANG;
        
    }
  
     [self.navigationController pushViewController:detailViewController animated:YES];
     
}

@end
