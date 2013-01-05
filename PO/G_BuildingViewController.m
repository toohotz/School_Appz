//
//  G_BuildingViewController.m
//  PO
//
//  Created by Jason on 8/18/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import "G_BuildingViewController.h"
#import "buildingListViewController.h"
#import "AdvertisingGraphicsDesignViewController.h"
#import "COPEViewController.h"
#import "advertisingGraphicsDesignProfessorsViewController.h"


@interface G_BuildingViewController ()

@end

@implementation G_BuildingViewController



- (void)viewDidLoad
{

    [super viewDidLoad];
    
    [self initialViewSetup];
    
   
    [self initTableView];

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
    G_floors = [[NSArray alloc] initWithObjects:@"1st Floor", @"2nd Floor", @"3rd Floor", @"4th Floor", @"5th Floor", @"6th Floor", @"7th Floor", @"8th Floor", nil];
}



#pragma mark - Tableview stuff

-(void) initTableView
{
    //    ***** WORKING PART ****** //
    //    0,416,174,375
    tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 45, 174, 285) style:UITableViewStylePlain];
    
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
    return [G_floors count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    
    
    NSString *name = [G_floors objectAtIndex:indexPath.row];
    cell.textLabel.text = name;
    
    // Configure the cell...
    
    return cell;
}

-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *sectionName = @"Select a floor";
    
    return sectionName;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    advertisingGraphicsDesignProfessorsViewController *AGPProfessors = [[advertisingGraphicsDesignProfessorsViewController alloc] init];
    COPEViewController *COPE_People = [[COPEViewController alloc] init];
    
    
    if (indexPath.row == 3 ) {
        
        [self.navigationController pushViewController:AGPProfessors animated:YES];
    }
    
    if (indexPath.row == 4) {
        [self presentViewController:COPE_People animated:YES completion:NULL];
    }
    
    
    
}

@end
