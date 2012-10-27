//
//  TABViewController.m

//  PO
//
//  Created by Jason on 8/10/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import "TABViewController.h"


#import "N_ViewController.h"
#import "M_BuildingViewController.h"
#import "V_BuildingViewController.h"
#import "G_BuildingViewController.h"
#import "P_BuildingViewController.h"
#import "A_BuildingViewController.h"

#define NAMN_BUILDING  0
#define ATRIUM_BUILDING  1
#define VORHEES_BUILDING  3
#define PEARL_BUILDING  4
#define GENERAL_BUILDING 5
#define MIDWAY_BUILDING 6

@interface TABViewController ()

@end

@implementation TABViewController

@synthesize floors, myTVC, tabVC;





/*
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/
- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    ;
    
    CGRect tableViewRect = CGRectMake(0, 0, 192, 960);
    
    myTVC = [[UITableView alloc] initWithFrame:tableViewRect style:UITableViewStylePlain];
    
//    [self initializeArrays];
    
    
    buildings = [[NSArray alloc] initWithObjects:@"Namn Building", @"Atrium Building", @"Pearl Building", @"General Building", @"Vorhees Building", @"Midway Building", nil];
    
//    
//    floorController.reinitializedArray = [[NSArray alloc] initWithArray:floors];
//    
//    NSLog(@"the floors array count is: %u", [floorController.reinitializedArray count]);
    
    buildingDescription = [[NSArray alloc] initWithObjects:@"Main Building", @"Middle Building", @"Nursing Building", nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

//-(void) initializeArrays
//{
//    Floors_N = [[NSArray alloc] initWithObjects:@"1st Floor", @"2nd Floor", @"3rd Floor" @" 4th Floor", @"5th Floor", @"6th Floor", @"7th Floor", @"8th Floor", @"9th Floor", @"10th Floor" , @"11th Floor",nil];
//    Floors_M = [[NSArray alloc] initWithObjects:@"1st Floor", @"2nd Floor", @"3rd Floor", nil];
//    Floors_V = [[NSArray alloc] initWithObjects:@"1st Floor", @"2nd Floor", @"3rd Floor" @" 4th Floor", @"5th Floor", @"6th Floor", @"7th Floor", @"8th Floor", nil];
//    Floors_A = [[NSArray alloc] initWithObjects:@"1st Floor", @"2nd Floor", @"3rd Floor" @" 4th Floor", @"5th Floor", @"6th Floor", @"7th Floor", @"8th Floor", nil];
//    Floors_G = [[NSArray alloc] initWithObjects:@"1st Floor", @"2nd Floor", @"3rd Floor" @" 4th Floor", @"5th Floor", @"6th Floor", nil];
//    Floors_P = [[NSArray alloc] initWithObjects:@"1st Floor", @"2nd Floor", @"3rd Floor" @" 4th Floor", @"5th Floor", @"6th Floor", nil];
//    
//}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    
    
    
    return [buildings count];
   
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    NSString *name = [buildings objectAtIndex:indexPath.row];
    cell.textLabel.text = name;
    
/*
    if (selectionInt == NAMN_BUILDING)
        cell.textLabel.text = [Floors_N objectAtIndex:indexPath.row];
    
    if (selectionInt == ATRIUM_BUILDING) {
        cell.textLabel.text = [Floors_A objectAtIndex:indexPath.row];
    }
    
    if (selectionInt == MIDWAY_BUILDING) {
        cell.textLabel.text = [Floors_M objectAtIndex:indexPath.row];
    }
    
    if (selectionInt == VORHEES_BUILDING) {
        cell.textLabel.text = [Floors_V objectAtIndex:indexPath.row];
    }
    
    if (selectionInt == GENERAL_BUILDING) {
        cell.textLabel.text = [Floors_G objectAtIndex:indexPath.row];
    }
    
    if (selectionInt == PEARL_BUILDING) {
        cell.textLabel.text = [Floors_P objectAtIndex:indexPath.row];
    }
    */
    
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];

    // Configure the cell...
    
    return cell;
}

-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *sectionName = @"Select A Building";
    
    return sectionName;
}

-(void) tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString *selectedState = [buildings objectAtIndex:[indexPath row]];

    
    
    
    NSString *msg = [[NSString alloc] initWithFormat:@"You hae selected %@", selectedState];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"State Selected" message:msg delegate:selectedState cancelButtonTitle:@"Okay" otherButtonTitles: nil];
    [alert show];
    


    
    
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
    

    /*
     BFViewController *detailViewController = [[BFViewController alloc] initWithNibName:@"BFViewController" bundle:nil];
    
    tabVC = [[UIViewController alloc] init];
    tabVC = detailViewController;
    */
//    detailViewController.selectedNumber = [[NSNumber alloc] init];
 
    /*
    
    if ([[buildings objectAtIndex:indexPath.row] isEqual:@"Namn Building"]) {
        
        detailViewController.selectedNumber = [NSNumber numberWithInt:NAMN_BUILDING];
        NSLog(@"%@:", detailViewController.selectedNumber);

 
        [detailViewController setTitle:[floors objectAtIndex:indexPath.row]];
        
    }
    
    if ([[buildings objectAtIndex:indexPath.row] isEqual:@"Atrium Building"]) {
        detailViewController.selectedNumber = [NSNumber numberWithInt:ATRIUM_BUILDING];
        NSLog(@"%@:", detailViewController.selectedNumber);

       
        [detailViewController setTitle:[floors objectAtIndex:indexPath.row]];
        
    }
    if ([[buildings objectAtIndex:indexPath.row] isEqual:@"Vorhees Building"]) {
        detailViewController.selectedNumber = [NSNumber numberWithInt:VORHEES_BUILDING];
        
                NSLog(@"%@:", detailViewController.selectedNumber);
        
        [detailViewController setTitle:[floors objectAtIndex:indexPath.row]];
        
    }
    if ([[buildings objectAtIndex:indexPath.row] isEqual:@"General Building"]) {
        detailViewController.selectedNumber = [NSNumber numberWithInt:GENERAL_BUILDING];
        NSLog(@"%@:", detailViewController.selectedNumber);
                NSLog(@"%@:", detailViewController.selectedNumber);
    
        [detailViewController setTitle:[floors objectAtIndex:indexPath.row]];
        
    }
    if ([[buildings objectAtIndex:indexPath.row] isEqual:@"Pearl Building"]) {
        detailViewController.selectedNumber = [NSNumber numberWithInt:PEARL_BUILDING];
          [detailViewController setTitle:[floors objectAtIndex:indexPath.row]];
        
    }
    if ([[buildings objectAtIndex:indexPath.row] isEqual:@"Midway Building"]) {
        detailViewController.selectedNumber = [NSNumber numberWithInt:MIDWAY_BUILDING];
                NSLog(@"%@:", detailViewController.selectedNumber);
      
        [detailViewController setTitle:[floors objectAtIndex:indexPath.row]];
        
    }
    
    */
    
   
    
    
    
    
     // ...
     // Pass the selected object to the new view controller.
//     [self.navigationController pushViewController:detailViewController animated:YES];
    

        

}

- (void)viewDidUnload {
    myTVC = nil;

    [super viewDidUnload];
}
@end
