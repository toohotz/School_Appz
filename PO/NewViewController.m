//
//  NewViewController.m
//  PO
//
//  Created by Jason on 9/10/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import "NewViewController.h"
#include "buildingsViewController.h"
#import "buildingListViewController.h"
@interface NewViewController ()

@end



@implementation NewViewController
@synthesize myTV;


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
    self.navigationController.navigationBarHidden = NO;
    [self initialViewSetup];
    
    
  [self initTableView];

    [super viewDidLoad];
	// Do any additional setup after loading the view.
}





-(void) viewWillAppear:(BOOL)animated
{
    
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
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 44, 174, 419)];
    contentView.autoresizesSubviews = YES;
    contentView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    
    contentView.backgroundColor = [UIColor clearColor];
//    [self setView:contentView];
    Floors_N = [[NSArray alloc] initWithObjects:@"NYCCT",nil];
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

    
    myTV = [[UITableView alloc] initWithFrame:CGRectMake(0, self.view.bounds.origin.y+34, 174, 45) style:UITableViewStylePlain];
   
    [self.view setBackgroundColor:[UIColor clearColor]];

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

-(void) tableView:(UITableView*) tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
       
        buildingListViewController *buildings = [[buildingListViewController alloc] init];
        [self.navigationController pushViewController:buildings animated:YES];
    }
   
}


#pragma mark - 

- (void)viewDidUnload {
    myTV = nil;

    [super viewDidUnload];
}



@end
