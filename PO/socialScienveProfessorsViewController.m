//
//  socialScienveProfessorsViewController.m
//  School_Appz
//
//  Created by Jason on 1/3/13.
//
//

#import "socialScienveProfessorsViewController.h"
#import "socialSciencePageVC.h"

#define AIDEN 0
#define BRAND 1
#define CAPTAPANO 2
#define CUORDILEONE 3
#define DERRINGH 4
#define GERARDI 5
#define HANNUM 6
#define KAPLAN 7
#define MCDONALD 8
#define NALVEN 9
#define PAGANO 10
#define PANAYOTAKIS 11
#define PARIDES 12
#define PARNES 13
#define RAMLALL 14
#define SISCO 15
#define TISON 16

@interface socialScienveProfessorsViewController ()

@end

@implementation socialScienveProfessorsViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) professorListSetup
{
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"socialScience_Professors" ofType:@"plist"];
    
    professors = [[NSArray alloc] initWithContentsOfFile:plistPath];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self professorListSetup];

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


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    
     socialSciencePageVC *detailViewController = [[socialSciencePageVC alloc] init];
    
    if (indexPath.row == AIDEN) {
        detailViewController.selection = AIDEN;
    }
    
    if (indexPath.row == BRAND)
    {
        detailViewController.selection = BRAND;
    }
    if (indexPath.row == CAPTAPANO)
    {
        detailViewController.selection = CAPTAPANO;
    }
    
    if (indexPath.row == CUORDILEONE)
    {
        detailViewController.selection = CUORDILEONE;
    }
    
    if (indexPath.row == DERRINGH)
    {
        detailViewController.selection = DERRINGH;
    }
    
    if (indexPath.row == GERARDI)
    {
        detailViewController.selection = GERARDI;
    }
    
    if (indexPath.row == HANNUM)
    {
        detailViewController.selection = HANNUM;
    }
    if (indexPath.row == KAPLAN)
    {
        detailViewController.selection = KAPLAN;
    }
    if (indexPath.row == MCDONALD)
    {
        detailViewController.selection = MCDONALD;
    }
    
    if (indexPath.row == NALVEN)
    {
        detailViewController.selection = NALVEN;
    }
    
    if (indexPath.row == PAGANO)
    {
        detailViewController.selection = PAGANO;
    }
    
    if (indexPath.row == PANAYOTAKIS)
    {
        detailViewController.selection = PANAYOTAKIS;
    }
    
    if (indexPath.row == PARIDES)
    {
        detailViewController.selection = PARIDES;
    }
    if (indexPath.row == PARNES)
    {
        detailViewController.selection = PARNES;
    }
    
    if (indexPath.row == RAMLALL)
    {
        detailViewController.selection = RAMLALL;
    }
    
    if (indexPath.row == SISCO)
    {
        detailViewController.selection = SISCO;
    }
    
    if (indexPath.row == TISON)
    {
        detailViewController.selection = TISON;
    }
       
    [self.navigationController pushViewController:detailViewController animated:YES];
    
}
@end

