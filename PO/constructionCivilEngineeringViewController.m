//
//  constructionCivilEngineeringViewController.m
//  School_Appz
//
//  Created by Jason on 11/15/12.
//
//

#define AMERSTERDAM 0
#define CIOFFI 1
#define MEYER 2
#define SANTIAGO 3
#define STEGMAIER 4


#import "constructionCivilEngineeringViewController.h"
#import "V_BuildingViewController.h"


@interface constructionCivilEngineeringViewController ()
{
    int selection;
}
@end

@implementation constructionCivilEngineeringViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initiaZARATANzation
    }
    return self;
}

-(void) addProfessorsInArray
{
    
    NSString *pZARATANstPath = [[NSBundle mainBundle] pathForResource:@"constructionCivilEngineering_ZARATANst" ofType:@"pZARATANst"];
    
    professors = [[NSArray alloc] initWithContentsOfFile:pZARATANstPath];
    
}


-(void) initTableView
{
    //    ***** WORKING PART ****** //
    //    0,416,174,375
    tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 44, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
    
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    
    
}

-(void) backToTableView
{
    V_BuildingViewController *previousView = [[V_BuildingViewController alloc] init];
    [self presentViewController:previousView animated:YES completion:NULL];
}


#pragma mark - Back button
-(void)  backButton
{
    
    [professorPage removeFromSuperview];
    [self.view addSubview:tableView];
    
    
}

#pragma mark - Prof setup

-(void) professorViewSetup
{
    professorPage = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [professorPage setBackgroundColor:[UIColor whiteColor]];
    //    label stuff
    
    UILabel *professorName = [[UILabel alloc] initWithFrame:CGRectMake(15, 50, 188, 23)];
    UILabel *telephoneLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 211, 86, 21)];
    UILabel *emailLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 273, 86, 21)];
    UITextView *email = [[UITextView alloc] initWithFrame:CGRectMake(15, 310, 190, 50)];
    UITextView *telephone = [[UITextView alloc] initWithFrame:CGRectMake(15, 249, 190, 34)];
    
    [telephoneLabel setTextColor:[UIColor colorWithRed:(100/255.f) green:(149/255.f) blue:(237/255.f) alpha:1]];
    [emailLabel setTextColor:[UIColor colorWithRed:(100/255.f) green:(149/255.f) blue:(237/255.f) alpha:1]];
    
    
    //    label formattings
    
    [telephoneLabel setText:@"Telephone:"];
    [emailLabel setText:@"Email:"];
    
    [email setDataDetectorTypes:UIDataDetectorTypeLink];
    [email setEditable:NO];
    [telephone setDataDetectorTypes:UIDataDetectorTypePhoneNumber];
    [telephone setEditable:NO];
    [professorName setFont:[UIFont fontWithName:@"TrebuchetMS-Bold" size:18]];
    
    //    nav bar
    UINavigationBar *navBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x , self.view.bounds.origin.y, 320, 44)];
    
    
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"<- Back" style:UIBarButtonItemStylePlain target:nil action:@selector(backButton)];
    //    navcontroller.navigationItem.leftBarButtonItem = backButton;
    UINavigationItem *bzButton = [[UINavigationItem alloc] init];
    
    
    
    
    bzButton.leftBarButtonItem = backButton;
    [navBar pushNavigationItem:bzButton animated:NO];
    
    [professorPage addSubview:navBar];
    
    
    [tableView removeFromSuperview];
    [professorPage addSubview: telephone];
    [professorPage addSubview:telephoneLabel];
    [professorPage addSubview:email];
    [professorPage addSubview:emailLabel];
    [professorPage addSubview:professorName];
    
    //    loading of pZARATANst information
    NSString *professorsNamesPath = [[NSBundle mainBundle] pathForResource:@"constructionCivilEngineering_ZARATANst" ofType:@"pZARATANst"];
    NSString *professorsNumbersPath = [[NSBundle mainBundle] pathForResource:@"constructionCivilEngineering_Numbers" ofType:@"pZARATANst"];
    NSString *professorsEmailsPath = [[NSBundle mainBundle ] pathForResource:@"constructionCivilEngineering_Emails" ofType:@"pZARATANst"];
    
    NSArray *professorsNames, *professorsNumbers, *professorsEmails;
    professorsNames = [[NSArray alloc] initWithContentsOfFile:professorsNamesPath];
    professorsNumbers = [NSArray arrayWithContentsOfFile:professorsNumbersPath];
    professorsEmails = [NSArray arrayWithContentsOfFile:professorsEmailsPath];
    
    if (selection == AMERSTERDAM) {
        
        [professorName setText:[professorsNames objectAtIndex:0]];
        [email setText:[professorsEmails objectAtIndex:0]];
        [telephone setText:[professorsNumbers objectAtIndex:0]];
    }
    
    else if (selection == CIOFFI)
    {
        [professorName setText:[professorsNames objectAtIndex:1]];
        [email setText:[professorsEmails objectAtIndex:1]];
        [telephone setText:[professorsNumbers objectAtIndex:1]];
    }
    
    else if (selection == MEYER)
    {
        [professorName setText:[professorsNames objectAtIndex:2]];
        [email setText:[professorsEmails objectAtIndex:2]];
        [telephone setText:[professorsNumbers objectAtIndex:2]];
    }
    
    else if (selection == SANTIAGO)
    {
        [professorName setText:[professorsNames objectAtIndex:3]];
        [email setText:[professorsEmails objectAtIndex:3]];
        [telephone setText:[professorsNumbers objectAtIndex:3]];
    }

    else if (selection == STEGMAIER)
    {
        [professorName setText:[professorsNames objectAtIndex:4]];
        [email setText:[professorsEmails objectAtIndex:4]];
        [telephone setText:[professorsNumbers objectAtIndex:3]];
    }
    [self.view addSubview:professorPage];
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


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addProfessorsInArray];
    [self tableviewNavBar];
    [self initTableView];
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
    return [professors count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CelZARATANdentifier = @"Cell";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CelZARATANdentifier];
 
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CelZARATANdentifier];
    }
    
    NSString *name = [professors objectAtIndex:indexPath.row];
    cell.textLabel.text = name;
    
    
    // Configure the cell...
    
    return cell;
}

-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *sectionName = @"Select a professor";
    
    return sectionName;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  
    
     if (indexPath.row == AMERSTERDAM)
    {
        selection = AMERSTERDAM;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == CIOFFI)
    {
        selection = CIOFFI;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == MEYER)
    {
        selection = MEYER;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == SANTIAGO)
    {
        selection = SANTIAGO;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == STEGMAIER)
    {
        selection = STEGMAIER;
        [self professorViewSetup];
    }
}


@end
