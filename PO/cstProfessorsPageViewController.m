//
//  cstProfessorsPageViewController.m
//  School_Appz
//
//  Created by Jason on 1/4/13.
//
//

#import "cstProfessorsPageViewController.h"
#import "cstProfessorsVC.h"


#define ACCUMANNO_BRANKEY 0
#define ARCHIBALD 1
#define BELLEHSEN 2
#define CABO 3
#define CATON 4
#define EBBERS 5
#define GRAHAM 6
#define GUIDONE 7
#define HERNANDEZ 8
#define HOLLEY 9
#define LI 10
#define LI_HONG 11
#define MALYUTA 12
#define MILNOAS 13
#define OUDEJEHANE 14
#define PINTO 15
#define REYES 16
#define RODNEY 17
#define SHAHIDULLAH 18
#define SIMMONS 19
#define VIGLINA 20

@interface cstProfessorsPageViewController ()

@end

@implementation cstProfessorsPageViewController

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
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"CST_Professor_List" ofType:@"plist"];
    
    professors = [[NSArray alloc] initWithContentsOfFile:plistPath];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self professorsList];

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
    if (editingStyle == UITableViewCellEditingStyleInsert) {
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


-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *sectionName = @"Select a professor";
    
    return sectionName;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    
     cstProfessorsVC *detailViewController = [[cstProfessorsVC alloc] init];

    if (indexPath.row == ACCUMANNO_BRANKEY) {
        detailViewController.selection = ACCUMANNO_BRANKEY;
        
        
    }
    
    if (indexPath.row == ARCHIBALD)
    {
        detailViewController.selection = ARCHIBALD;
        
    }
    
    if (indexPath.row == BELLEHSEN)
    {
        detailViewController.selection = BELLEHSEN;
        
    }
    
    if (indexPath.row == CABO)
    {
        detailViewController.selection = CABO;
        
    }
    
    if (indexPath.row == CATON)
    {
        detailViewController.selection = CATON;
        
    }
    
    if (indexPath.row == EBBERS)
    {
        detailViewController.selection = EBBERS;
        
    }
    
    if (indexPath.row == GRAHAM)
    {
        detailViewController.selection = GRAHAM;
        
    }
    
    if (indexPath.row == GUIDONE)
    {
        detailViewController.selection = GUIDONE;
        
    }
    
    if (indexPath.row == HERNANDEZ)
    {
        detailViewController.selection = HERNANDEZ;
        
    }
    
    if (indexPath.row == HOLLEY)
    {
        detailViewController.selection = HOLLEY;
        
    }
    
    if (indexPath.row == LI)
    {
        detailViewController.selection = LI;
        
    }
    
    if (indexPath.row == LI_HONG)
    {
        detailViewController.selection = LI_HONG;
        
    }
    
    if (indexPath.row == MALYUTA)
    {
        detailViewController.selection = MALYUTA;
        
    }
    
    if (indexPath.row == MILNOAS)
    {
        detailViewController.selection = MILNOAS;
        
    }
    
    if (indexPath.row == OUDEJEHANE)
    {
        detailViewController.selection = OUDEJEHANE;
        
    }
    
    if (indexPath.row == PINTO)
    {
        detailViewController.selection = PINTO;
        
    }
    
    if (indexPath.row == REYES)
    {
        detailViewController.selection = REYES;
        
    }
    
    if (indexPath.row == RODNEY)
    {
        detailViewController.selection = RODNEY;
        
    }
    
    if (indexPath.row == SHAHIDULLAH)
    {
        detailViewController.selection = SHAHIDULLAH;
        
    }
    
    if (indexPath.row == SIMMONS)
    {
        detailViewController.selection = SIMMONS;
        
    }
    
    if (indexPath.row == VIGLINA)
    {
        detailViewController.selection = VIGLINA;
        
    }
  
    
     [self.navigationController pushViewController:detailViewController animated:YES];
     
}

@end
