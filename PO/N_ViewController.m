//
//  N_ViewController.m
//  PO
//
//  Created by Jason on 9/14/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import "N_ViewController.h"
#import "buildingsViewController.h"
#include "N_7th.h"
#include "N_6th.h"
#include "N_5th.h"
#include "mathProfessorsViewController.h"

@interface N_ViewController ()

@end

@implementation N_ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    [self initialViewSetup];
    
    [self navBarSetup];
    
    [self initTableView];
    [super viewDidLoad];

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
    Floors_N = [[NSArray alloc] initWithObjects:@"1st Floor", @"2nd Floor", @"3rd Floor", @"4th Floor", @"5th Floor", @"6th Floor", @"7th Floor", @"8th Floor", @"9th Floor", @"10th Floor" , @"11th Floor",nil];
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
    tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 45, 174, 375) style:UITableViewStylePlain];
    
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    
    //    ***** WORKING PART ****** //
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    
    return [Floors_N count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    
    
    NSString *name = [Floors_N objectAtIndex:indexPath.row];
    cell.textLabel.text = name;
    
    // Configure the cell...
    
    return cell;
    
}

-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *sectionName = @"Select a floor";
    
    return sectionName;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    N_7th *mathProfessorsVC = [[N_7th alloc] init];
    N_5th *fifthFloorProfessors = [[N_5th alloc] init];
    N_6th *physicsProfessorsVC = [[N_6th alloc] init];
    mathProfessorsViewController *mathProz = [[mathProfessorsViewController alloc] init];
    
    
    if (indexPath.row == 0) {
//        [self presentViewController:mathProfessorsVC animated:YES completion:NULL];
        [self presentViewController:mathProz animated:YES completion:NULL];
    }
    
    if (indexPath.row == 5) {
        [self presentViewController:physicsProfessorsVC animated:YES completion:NULL];
    }
    
}



#pragma mark -

#pragma mark - Custom Back Button
-(void) backButton
{
    buildingsViewController *buildingsView = [[buildingsViewController alloc] init];
    
    [self presentViewController:buildingsView animated:YES completion:NULL];
}







@end
