//
//  CSTProfessorsViewController.m
//  School_Appz
//
//  Created by Jason on 11/4/12.
//
//

#import "CSTProfessorsViewController.h"
#import "N_ViewController.h"

#define ACCUMANNO_BRANKEY 0
#define ARCHIBALD 1
#define BELLEHSEN 2
#define CABO 3
#define CATON 4
#define EBBERS 5
#define GRAHAM 6
#define GUIDONE 7
#define HERNANDEZ 8
#define HOLLEY 9
#define LI 10
#define LI_HONG 11
#define MALYUTA 12
#define MILNOAS 13
#define OUDEJEHANE 14
#define PINTO 15
#define REYES 16
#define RODNEY 17
#define SHAHIDULLAH 18
#define SIMMONS 19
#define VIGLINA 20

@interface CSTProfessorsViewController ()
{
    int selection;
}
@end

@implementation CSTProfessorsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


-(void) addProfessorsInArray
{
    
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"CST_Professor_List" ofType:@"plist"];
    
    professors = [[NSArray alloc] initWithContentsOfFile:plistPath];
    
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
    N_ViewController *previousView = [[N_ViewController alloc] init];
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
    
    //    loading of plist information
    NSString *professorsNamesPath = [[NSBundle mainBundle] pathForResource:@"CST_Professor_List" ofType:@"plist"];
    NSString *professorsNumbersPath = [[NSBundle mainBundle] pathForResource:@"CST_Professor_Number" ofType:@"plist"];
    NSString *professorsEmailsPath = [[NSBundle mainBundle ] pathForResource:@"CST_Professor_Email" ofType:@"plist"];
    
    NSArray *professorsNames, *professorsNumbers, *professorsEmails;
    professorsNames = [[NSArray alloc] initWithContentsOfFile:professorsNamesPath];
    professorsNumbers = [NSArray arrayWithContentsOfFile:professorsNumbersPath];
    professorsEmails = [NSArray arrayWithContentsOfFile:professorsEmailsPath];
    
    if (selection == ACCUMANNO_BRANKEY) {
        
        [professorName setText:[professorsNames objectAtIndex:0]];
        [email setText:[professorsEmails objectAtIndex:0]];
        [telephone setText:[professorsNumbers objectAtIndex:0]];
    }
    
    else if (selection == ARCHIBALD)
    {
        [professorName setText:[professorsNames objectAtIndex:1]];
        [email setText:[professorsEmails objectAtIndex:1]];
        [telephone setText:[professorsNumbers objectAtIndex:1]];
    }
    
    else if (selection == BELLEHSEN)
    {
        [professorName setText:[professorsNames objectAtIndex:2]];
        [email setText:[professorsEmails objectAtIndex:2]];
        [telephone setText:[professorsNumbers objectAtIndex:2]];
    }
    
    else if (selection == CABO)
    {
        [professorName setText:[professorsNames objectAtIndex:3]];
        [email setText:[professorsEmails objectAtIndex:3]];
        [telephone setText:[professorsNumbers objectAtIndex:3]];
    }
    
    else if (selection == CATON)
    {
        
        [professorName setText:[professorsNames objectAtIndex:4]];
        [email setText:[professorsEmails objectAtIndex:4]];
        [telephone setText:[professorsNumbers objectAtIndex:4]];
    }
    
    else if (selection == EBBERS)
    {
        [professorName setText:[professorsNames objectAtIndex:5]];
        [email setText:[professorsEmails objectAtIndex:5]];
        [telephone setText:[professorsNumbers objectAtIndex:5]];
    }
    
    else if (selection == GRAHAM)
    {
        [professorName setText:[professorsNames objectAtIndex:6]];
        [email setText:[professorsEmails objectAtIndex:6]];
        [telephone setText:[professorsNumbers objectAtIndex:6]];
    }
    
    else if (selection == GUIDONE)
    {
        [professorName setText:[professorsNames objectAtIndex:7]];
        [email setText:[professorsEmails objectAtIndex:7]];
        [telephone setText:[professorsNumbers objectAtIndex:7]];
    }
    
    else if (selection == HERNANDEZ)
    {
        [professorName setText:[professorsNames objectAtIndex:8]];
        [email setText:[professorsEmails objectAtIndex:8]];
        [telephone setText:[professorsNumbers objectAtIndex:8]];
    }
    
    else if (selection == HOLLEY)
    {
        [professorName setText:[professorsNames objectAtIndex:9]];
        [email setText:[professorsEmails objectAtIndex:9]];
        [telephone setText:[professorsNumbers objectAtIndex:9]];
    }
    
    else if (selection == LI)
    {
        [professorName setText:[professorsNames objectAtIndex:10]];
        [email setText:[professorsEmails objectAtIndex:10]];
        [telephone setText:[professorsNumbers objectAtIndex:10]];
    }
    
    else if (selection == LI_HONG)
    {
        [professorName setText:[professorsNames objectAtIndex:11]];
        [email setText:[professorsEmails objectAtIndex:11]];
        [telephone setText:[professorsNumbers objectAtIndex:11]];
    }
    
    else if (selection == MALYUTA)
    {
        [professorName setText:[professorsNames objectAtIndex:12]];
        [email setText:[professorsEmails objectAtIndex:12]];
        [telephone setText:[professorsNumbers objectAtIndex:12]];
    }
    
    else if (selection == MILNOAS)
    {
        [professorName setText:[professorsNames objectAtIndex:13]];
        [email setText:[professorsEmails objectAtIndex:13]];
        [telephone setText:[professorsNumbers objectAtIndex:13]];
    }
    
    else if (selection == OUDEJEHANE)
    {
        [professorName setText:[professorsNames objectAtIndex:14]];
        [email setText:[professorsEmails objectAtIndex:14]];
        [telephone setText:[professorsNumbers objectAtIndex:14]];
    }
    
    else if (selection == PINTO)
    {
        [professorName setText:[professorsNames objectAtIndex:15]];
        [email setText:[professorsEmails objectAtIndex:15]];
        [telephone setText:[professorsNumbers objectAtIndex:15]];
    }
    
    else if (selection == REYES)
    {
        [professorName setText:[professorsNames objectAtIndex:16]];
        [email setText:[professorsEmails objectAtIndex:16]];
        [telephone setText:[professorsNumbers objectAtIndex:16]];
    }
    
    else if (selection == RODNEY)
    {
        [professorName setText:[professorsNames objectAtIndex:17]];
        [email setText:[professorsEmails objectAtIndex:17]];
        [telephone setText:[professorsNumbers objectAtIndex:17]];
    }
    
    else if (selection == SHAHIDULLAH)
    {
        [professorName setText:[professorsNames objectAtIndex:18]];
        [email setText:[professorsEmails objectAtIndex:18]];
        [telephone setText:[professorsNumbers objectAtIndex:18]];
    }
    
    else if (selection == SIMMONS)
    {
        [professorName setText:[professorsNames objectAtIndex:19]];
        [email setText:[professorsEmails objectAtIndex:19]];
        [telephone setText:[professorsNumbers objectAtIndex:19]];
    }
    
    else if (selection == VIGLINA)
    {
        [professorName setText:[professorsNames objectAtIndex:20]];
        [email setText:[professorsEmails objectAtIndex:20]];
        [telephone setText:[professorsNumbers objectAtIndex:20]];
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
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    
    //    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
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
    if (indexPath.row == ACCUMANNO_BRANKEY) {
        selection = ACCUMANNO_BRANKEY;
        [self professorViewSetup];
        
    }
    
    else if (indexPath.row == ARCHIBALD)
    {
        selection = ARCHIBALD;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == BELLEHSEN)
    {
        selection = BELLEHSEN;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == CABO)
    {
        selection = CABO;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == CATON)
    {
        selection = CATON;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == EBBERS)
    {
        selection = EBBERS;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == GRAHAM)
    {
        selection = GRAHAM;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == GUIDONE)
    {
        selection = GUIDONE;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == HERNANDEZ)
    {
        selection = HERNANDEZ;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == HOLLEY)
    {
        selection = HOLLEY;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == LI)
    {
        selection = LI;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == LI_HONG)
    {
        selection = LI_HONG;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == MALYUTA)
    {
        selection = MALYUTA;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == MILNOAS)
    {
        selection = MILNOAS;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == OUDEJEHANE)
    {
        selection = OUDEJEHANE;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == PINTO)
    {
        selection = PINTO;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == REYES)
    {
        selection = REYES;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == RODNEY)
    {
        selection = RODNEY;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == SHAHIDULLAH)
    {
        selection = SHAHIDULLAH;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == SIMMONS)
    {
        selection = SIMMONS;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == VIGLINA)
    {
        selection = VIGLINA;
        [self professorViewSetup];
    }


}



@end
