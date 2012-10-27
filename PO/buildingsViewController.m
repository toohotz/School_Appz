//
//  buildingsViewController.m
//  PO
//
//  Created by Jason on 8/29/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import "buildingsViewController.h"
#import "N_ViewController.h"
#import "M_BuildingViewController.h"
#import "V_BuildingViewController.h"
#import "G_BuildingViewController.h"
#import "P_BuildingViewController.h"
#import "A_BuildingViewController.h"
#import "NewViewController.h"
#import "initialVC.h"


#define NAMN_BUILDING  0
#define ATRIUM_BUILDING  1
#define VORHEES_BUILDING  2
#define PEARL_BUILDING  3
#define GENERAL_BUILDING 4
#define MIDWAY_BUILDING 5

@interface buildingsViewController ()

@end

@implementation buildingsViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    [self initialViewSetup];
    
//    [self navBarSetup];
    
    self.navigationController.navigationBarHidden = NO;
    
    [self initTableView];

}

#warning navigation bar not showing on reloading of view
-(void) viewDidAppear:(BOOL)animated
{
    [self initialViewSetup];
    self.navigationController.navigationBarHidden = NO;
    [self initTableView];
    [self navBarSetup];
}



#pragma mark - UIView setup
-(void) initialViewSetup
{
    //    UIView setup
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    contentView.autoresizesSubviews = YES;
    contentView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    
    contentView.backgroundColor = [UIColor clearColor];
    [self setView:contentView];
    buildings = [[NSArray alloc] initWithObjects:@"Namn Building", @"Atrium Building", @"Pearl Building", @"General Building", @"Vorhees Building", @"Midway Building", nil];
}



#pragma mark - Navbar Setup
-(void) navBarSetup
{
    UINavigationBar *navBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x , self.view.bounds.origin.y, 320, 44)];
    
    
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"<- Back" style:UIBarButtonItemStylePlain target:nil action:@selector(backButton)];
    //    navcontroller.navigationItem.leftBarButtonItem = backButton;
    UINavigationItem *bzButton = [[UINavigationItem alloc] init];
    
    bzButton.leftBarButtonItem = backButton;
    [navBar pushNavigationItem:bzButton animated:NO];
    
    
    
    [self.view addSubview:navBar];
}

#pragma mark - Tableview stuff

-(void) initTableView
{
    //    ***** WORKING PART ****** //
    //    0,416,174,375
    tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
    
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    
    //    ***** WORKING PART ****** //
}





#pragma mark - Custom Back Button
-(void) backButton
{
#warning Need to properly reintialize the initial View Controller
    initialVC *firstView = [[initialVC alloc] init];
    [self presentViewController:firstView animated:YES completion:NULL];
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
    NSString *sectionName = @"Select A Building";
    
    return sectionName;
}



#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
    
    if (indexPath.row == NAMN_BUILDING) {
    
        
        N_ViewController *N_Floors = [[N_ViewController alloc] init];
        [self presentViewController:N_Floors animated:YES completion:NULL];
     
        
    }
    
    if (indexPath.row == ATRIUM_BUILDING) {
        A_BuildingViewController *A_floorsVC = [[A_BuildingViewController alloc] init];
        [self presentViewController:A_floorsVC animated:YES completion:NULL];
    }
    
    if (indexPath.row == GENERAL_BUILDING) {
        G_BuildingViewController *G_floorsVC = [[G_BuildingViewController alloc] init];
        [self presentViewController:G_floorsVC animated:YES completion:NULL];
        
    }
    
    if (indexPath.row == PEARL_BUILDING) {
        P_BuildingViewController *P_floorsVC = [[P_BuildingViewController alloc] init];
        [self presentViewController:P_floorsVC animated:YES completion:NULL];
    }
    
    if (indexPath.row == MIDWAY_BUILDING) {
        M_BuildingViewController *M_floorsVC = [[M_BuildingViewController alloc] init];
        [self presentViewController:M_floorsVC animated:YES completion:NULL];
    }
    
    if (indexPath.row == VORHEES_BUILDING) {
        V_BuildingViewController *V_floorsVC = [[V_BuildingViewController alloc] init];
        [self presentViewController:V_floorsVC animated:YES completion:NULL];
    }
    
  
    
}

@end
