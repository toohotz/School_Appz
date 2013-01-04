//
//  buildingListViewController.m
//  School_Appz
//
//  Created by Jason on 11/5/12.
//
//

#import "buildingListViewController.h"
#import "N_ViewController.h"
#import "M_BuildingViewController.h"
#import "V_BuildingViewController.h"
#import "G_BuildingViewController.h"
#import "P_BuildingViewController.h"
#import "A_BuildingViewController.h"
#import "initialVC.h"

#define NAMN_BUILDING  0
#define ATRIUM_BUILDING 1
#define PEARL_BUILDING  2
#define GENERAL_BUILDING 4
#define VORHEES_BUILDING  5
#define MIDWAY_BUILDING 6

@interface buildingListViewController ()

@end

@implementation buildingListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) buildingsArray
{
    buildings = [[NSArray alloc] initWithObjects:@"Namn Building", @"Atrium Building", @"Pearl Building", @"General Building", @"Vorhees Building", @"Midway Building", nil];
}

-(void) initTableView
{
    //    ***** WORKING PART ****** //
    //    0,416,174,375
    tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, self.view.bounds.origin.y+33, /*self.view.bounds.size.width*/ 184, self.view.bounds.size.height) style:UITableViewStylePlain];
    
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    
    
}

-(void) buildingViewSetup
{
    buildingsView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
//    [buildingsView  setBackgroundColor:[UIColor clearColor]];
    
    //    nav bar
    UINavigationBar *navBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x , self.view.bounds.origin.y, 320, 44)];
    
    
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"<- Back" style:UIBarButtonItemStylePlain target:nil action:@selector(backButton)];
    //    navcontroller.navigationItem.leftBarButtonItem = backButton;
    UINavigationItem *bzButton = [[UINavigationItem alloc] init];
    
    
    
    
    bzButton.leftBarButtonItem = backButton;
    [navBar pushNavigationItem:bzButton animated:NO];
    
    [buildingsView addSubview:navBar];
    
//    [tableView removeFromSuperview];
    
    [self.view addSubview:buildingsView];
}

-(void)tableviewNavBar
{
    //    nav bar
    UINavigationBar *navBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x , self.view.bounds.origin.y, 320, 44)];
    
    
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"<- Back" style:UIBarButtonItemStylePlain target:nil action:@selector(backToTableView )];
    //    navcontroller.navigationItem.leftBarButtonItem = backButton;
    UINavigationItem *bzButton = [[UINavigationItem alloc] init];
    
    
    
    
    bzButton.leftBarButtonItem = backButton;
    [navBar pushNavigationItem:bzButton animated:NO];
    
    [self.view addSubview:navBar];
}

-(void) backToTableView
{
    initialVC *firstVC = [[initialVC alloc] init];
//    [self presentViewController:firstVC animated:YES completion:NULL];
    [self.navigationController pushViewController:firstVC animated:YES];
}



- (void)viewDidLoad
{
//    self.navigationController.navigationBarHidden = NO;
    [self.navigationController setNavigationBarHidden:NO];
    [super viewDidLoad];
    [self buildingsArray];
    [self initTableView];
        

//    [self buildingViewSetup];
    
//    [self tableviewNavBar];
    
    

}

-(void) viewWillAppear:(BOOL)animated
{

    [self viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Tableview stuff

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
    
    
    // Configure the cell...
    
    return cell;
}

-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *sectionName = @"Select a building";
    
    return sectionName;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        N_ViewController *N_Floors = [[N_ViewController alloc] init];
//        [self presentViewController:N_Floors animated:YES completion:NULL];
        [self.navigationController pushViewController:N_Floors animated:YES];
    }
    
    if (indexPath.row == 1) {
        A_BuildingViewController *A_floorsVC = [[A_BuildingViewController alloc] init];
        [self.navigationController pushViewController:A_floorsVC animated:YES];
    }
    if (indexPath.row == 3) {
        G_BuildingViewController *G_floorsVC = [[G_BuildingViewController alloc] init];
        [self.navigationController pushViewController:G_floorsVC animated:YES];
    }
    
    if (indexPath.row == 2) {
        P_BuildingViewController *P_floorsVC = [[P_BuildingViewController alloc] init];
        [self.navigationController pushViewController:P_floorsVC animated:YES];
    }
    if (indexPath.row == 5) {
        M_BuildingViewController *M_floorsVC = [[M_BuildingViewController alloc] init];
        [self.navigationController pushViewController:M_floorsVC animated:YES];
    }
    if (indexPath.row == 4) {
        V_BuildingViewController *V_floors = [[V_BuildingViewController alloc] init];
        [self.navigationController pushViewController:V_floors animated:YES];
    }
}



@end
