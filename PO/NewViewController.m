//
//  NewViewController.m
//  PO
//
//  Created by Jason on 9/10/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import "NewViewController.h"
#include "buildingsViewController.h"
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

    [self initialViewSetup];
    
    [self navBarSetup];
    
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

#pragma mark - 

- (void)viewDidUnload {
    myTV = nil;
    [super viewDidUnload];
}

#pragma mark - Custom Back Button
-(void) backButton
{
    buildingsViewController *buildingsView = [[buildingsViewController alloc] init];
  
    [self presentViewController:buildingsView animated:YES completion:NULL];
}

@end
