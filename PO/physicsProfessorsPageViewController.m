//
//  physicsProfessorsPageViewController.m
//  School_Appz
//
//  Created by Jason on 1/4/13.
//
//

#import "physicsProfessorsPageViewController.h"
#import "physicsProfessorsVC.h"

#define BARJIS 0
#define BLAKE 1
#define BOUDANA 2
#define BOYKO 3
#define COHEN 4
#define GELFAND 5
#define GRACE 6
#define KEZERASHVILI 7
#define LUFENG 8
#define MATLOFF 9
#define MCKNIGHT 10
#define MCLOUGHLIN 11
#define MANGROO 12
#define REMSEN 13
#define TEWANI 14
#define WISE 15

@interface physicsProfessorsPageViewController ()

@end

@implementation physicsProfessorsPageViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}


-(void) professorsList
{
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"Physics_Professors_List" ofType:@"plist"];
    
    professors = [[NSArray alloc] initWithContentsOfFile:plistPath];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self professorsList];

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

     physicsProfessorsVC *detailViewController = [[physicsProfessorsVC alloc] init];
    
     
    
    if (indexPath.row == BARJIS) {
        detailViewController.selection = BARJIS;
    }
    
    if (indexPath.row == BLAKE) {
        detailViewController.selection = BLAKE;
    }
    
    if (indexPath.row == BOUDANA) {
        detailViewController.selection = BOUDANA;
    }
    
    if (indexPath.row == BOYKO) {
        detailViewController.selection = BOYKO;
    }
    
    if (indexPath.row == COHEN) {
        detailViewController.selection = COHEN;
    }
    
    if (indexPath.row == GELFAND) {
        detailViewController.selection = GELFAND;
    }
    
    if (indexPath.row == GRACE) {
        detailViewController.selection = GRACE;
    }
    
    if (indexPath.row == KEZERASHVILI) {
        detailViewController.selection = KEZERASHVILI;
    }
    
    if (indexPath.row == LUFENG) {
        detailViewController.selection = LUFENG;
    }
    
    if (indexPath.row == MATLOFF) {
        detailViewController.selection = MATLOFF;
    }
    
    if (indexPath.row == MCKNIGHT) {
        detailViewController.selection = MCKNIGHT;
    }
    
    if (indexPath.row == MCLOUGHLIN) {
        detailViewController.selection = MCLOUGHLIN;
    }
    
    if (indexPath.row == MANGROO) {
        detailViewController.selection = MANGROO;
    }
    
    if (indexPath.row == REMSEN) {
        detailViewController.selection = REMSEN;
    }
    
    if (indexPath.row == TEWANI) {
        detailViewController.selection = TEWANI;
    }
    
    if (indexPath.row == WISE) {
        detailViewController.selection = WISE;
    }
    
    [self.navigationController pushViewController:detailViewController animated:YES];
}

@end
