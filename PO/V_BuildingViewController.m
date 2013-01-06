//
//  V_BuildingViewController.m
//  PO
//
//  Created by Jason on 8/18/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import "V_BuildingViewController.h"
#import "buildingListViewController.h"
#import "emt_cetProfessorsViewController.h"
#import "constructionCivilEngineeringProfessorsViewController.h"
#import "mechanicalEngineeringProfessorsViewController.h"


@interface V_BuildingViewController ()

@end

@implementation V_BuildingViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    [self initialViewSetup];
    
//    [self navBarSetup];
    self.navigationController.navigationBarHidden = NO;
    [self initTableView];
    

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

#pragma mark - UIView setup
-(void) initialViewSetup
{
    //    UIView setup
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    contentView.autoresizesSubviews = YES;
    contentView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    
    contentView.backgroundColor = [UIColor clearColor];
    [self setView:contentView];

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
        V_floors = [[NSArray alloc] initWithObjects:@"1st Floor", @"2nd Floor", @"3rd Floor", @"4th Floor", @"5th Floor", @"6th Floor", @"7th Floor", @"8th Floor", nil];
    tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, self.view.bounds.origin.y+33, 174, 280) style:UITableViewStylePlain];
    
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    
    //    ***** WORKING PART ****** //
}

#pragma mark - Custom Back Button
-(void) backButton
{
    buildingListViewController *buildingsVC = [[buildingListViewController alloc] init];
    [self presentViewController:buildingsVC animated:YES completion:NULL];
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
    return [V_floors count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];

    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    
    
    NSString *name = [V_floors objectAtIndex:indexPath.row];
    cell.textLabel.text = name;
    
    // Configure the cell...
    
    return cell;
}

-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *sectionName = @"Select a floor";
    
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

    constructionCivilEngineeringProfessorsViewController *civilEngineeringDept = [[constructionCivilEngineeringProfessorsViewController alloc] init];
    
    
//    test VC
    emt_cetProfessorsViewController *newEMTDept = [[emt_cetProfessorsViewController alloc] init];
    
    mechanicalEngineeringProfessorsViewController *mechanicalEngineeringDept = [[mechanicalEngineeringProfessorsViewController alloc] init];
    
    if (indexPath.row == 3) {
        [self.navigationController pushViewController:civilEngineeringDept animated:YES];
    }
    
    if (indexPath.row == 5) {
        [self.navigationController pushViewController:newEMTDept animated:YES];
    }
    
    if (indexPath.row == 4) {
        [self.navigationController pushViewController:mechanicalEngineeringDept animated:YES];
    }
}

@end
