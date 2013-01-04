//
//  emt_cetProfessorsViewController.m
//  School_Appz
//
//  Created by Jason on 1/3/13.
//
//

#import "emt_cetProfessorsViewController.h"
#import "professor_testViewController.h"

#define ARMSTRONG 0
#define BLANK 1
#define CARRANZA 2
#define CARRINGTON 3
#define DERMAN 4
#define ELKINS 5
#define HUSSEIN 6
#define MORTON 7
#define RAZUKAS 8
#define WATHERSPOON 9
#define ZARATAN 10
#define ZIA 11

@interface emt_cetProfessorsViewController ()

@end

@implementation emt_cetProfessorsViewController
@synthesize selection = _selection;
@synthesize myCount = _myCount;


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

//set instance variable test



-(void) professorSetup
{
//    professors = [[NSArray alloc] initWithObjects:@"First Professor", @"Second Professor", @"Third Professor", @"Fourth Professor", @"5th Professor", @"6th Professor", nil];
    
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"EMT_CET_List" ofType:@"plist"];
    professors = [[NSArray alloc] initWithContentsOfFile:plistPath];
    
}



- (void)viewDidLoad
{
    [super viewDidLoad];
//    self.navigationController.navigationBarHidden = NO;

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

    
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

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [professors count];
}

-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *sectionName = @"Select a professor";
    
    return sectionName;
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

    
    // Configure the cell...

    
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
    
     professor_testViewController *detailViewController = [[professor_testViewController alloc] init];

     // Pass the selected object to the new view controller.
  
    
    if (indexPath.row == ARMSTRONG) {
        
        detailViewController.professorSelected = ARMSTRONG;
        

        

        NSLog(@"the before selection was: %i", detailViewController.professorSelected);
        
           [self.navigationController pushViewController:detailViewController animated:YES];
        
    }
    
    if (indexPath.row == BLANK) {
       
        
        detailViewController.professorSelected = BLANK;
        NSLog(@"the before selection was: %i", detailViewController.professorSelected);
           [self.navigationController pushViewController:detailViewController animated:YES];
    }
    
    if (indexPath.row == CARRANZA) {
        detailViewController.professorSelected = CARRANZA;
        NSLog(@"the before selection was: %i", detailViewController.professorSelected);
        
        [self.navigationController pushViewController:detailViewController animated:YES];
    }
    
    if (indexPath.row == CARRINGTON) {
        detailViewController.professorSelected = CARRINGTON;
        NSLog(@"the before selection was: %i", detailViewController.professorSelected);
        [self.navigationController pushViewController:detailViewController animated:YES];
    }
    
    if (indexPath.row == DERMAN) {
        detailViewController.professorSelected = CARRINGTON;
        [self.navigationController pushViewController:detailViewController animated:YES];
    }
    
    if (indexPath.row == ELKINS) {
        detailViewController.professorSelected = ELKINS;
        [self.navigationController pushViewController:detailViewController animated:YES];
    }
    
    if (indexPath.row == HUSSEIN) {
        detailViewController.professorSelected = HUSSEIN;
        [self.navigationController pushViewController:detailViewController animated:YES];
    }
    
    if (indexPath.row == MORTON) {
        detailViewController.professorSelected = MORTON;
        [self.navigationController pushViewController:detailViewController animated:YES];
    }
    
    if (indexPath.row == RAZUKAS) {
        detailViewController.professorSelected = RAZUKAS;
        [self.navigationController pushViewController:detailViewController animated:YES];
    }
    
    if (indexPath.row == WATHERSPOON) {
        detailViewController.professorSelected = WATHERSPOON;
        [self.navigationController pushViewController:detailViewController animated:YES];
    }
    
    if (indexPath.row == ZARATAN) {
        detailViewController.professorSelected = ZARATAN;
        [self.navigationController pushViewController:detailViewController animated:YES];
    }
    
    if (indexPath.row == ZIA) {
        detailViewController.professorSelected = ZIA;
        [self.navigationController pushViewController:detailViewController animated:YES];
    }
    
}

@end
