//
//  N_ViewController.m
//  PO
//
//  Created by Jason on 9/14/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import "N_ViewController.h"
#import "mathProfessorsViewController.h"
#import "physicsProfessorsPageViewController.h"
#import "CSTProfessorsViewController.h"
#import "socialScienveProfessorsViewController.h"
#import "buildingListViewController.h"
#import "newStudentFacultyViewController.h"
#import "math_ProfessorsViewController.h"


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
//       [self.navigationController setNavigationBarHidden:NO animated:YES];
            self.navigationController.navigationBarHidden = NO;
    
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
//    [self setView:contentView];
//    [self.view addSubview:contentView];
  
}


#pragma mark - Tableview stuff

-(void) initTableView
{
    //    ***** WORKING PART ****** //
    //    0,416,174,375
//    needs to have the bounds.size.height to be -44 to not cut off bottom row
    tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 33, 174, self.view.bounds.size.height-80) style:UITableViewStylePlain];
//    tableView.autoresizingMask &= ~UIViewAutoresizingFlexibleBottomMargin;

      Floors_N = [[NSArray alloc] initWithObjects:@"1st Floor", @"2nd Floor", @"3rd Floor", @"4th Floor", @"5th Floor", @"6th Floor", @"7th Floor", @"8th Floor", @"9th Floor", @"10th Floor" , @"11th Floor", nil];
    
    
    
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
    
    newStudentFacultyViewController *newStudentFaculty = [[newStudentFacultyViewController alloc] init];
    physicsProfessorsPageViewController *physicsProfessors = [[physicsProfessorsPageViewController alloc] init];
    CSTProfessorsViewController *cstProfessors = [[CSTProfessorsViewController alloc] init];
    socialScienveProfessorsViewController *socialScienceProfessors = [[socialScienveProfessorsViewController alloc] init];
    math_ProfessorsViewController *mathProfessors = [[math_ProfessorsViewController alloc] init];
    
    if (indexPath.row == 0) {
        [self.navigationController pushViewController:newStudentFaculty animated:YES];
    }
    
    if (indexPath.row == 5) {
        [self.navigationController pushViewController:socialScienceProfessors animated:YES];
    }
    
    if (indexPath.row == 6) {

        [self.navigationController pushViewController:mathProfessors animated:YES];
    }
    
    if (indexPath.row == 7) {
        [self.navigationController pushViewController:physicsProfessors animated:YES];
    }
    
    if (indexPath.row == 8) {
        [self presentViewController:cstProfessors animated:YES completion:NULL];
    }
    
    
}



#pragma mark -

#pragma mark - Custom Back Button
-(void) backButton
{

    buildingListViewController *theBuildings = [[buildingListViewController alloc] init];
    
    [self presentViewController:theBuildings animated:YES completion:NULL];
}

@end
