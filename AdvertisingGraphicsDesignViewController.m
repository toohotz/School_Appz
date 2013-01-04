//
//  AdvertisingGraphicsDesignViewController.m
//  School_Appz
//
//  Created by Jason on 11/10/12.
//
//

#import "AdvertisingGraphicsDesignViewController.h"
#import "G_BuildingViewController.h"

#define ADAE 0
#define APTEKAR 1
#define BARFOOT 2
#define BLEHL 3
#define CAPUTO 4
#define CARR 5
#define GUILIANI 6
#define GOETZ 7
#define HAYES 8
#define HOLDEN 9
#define KRASHINSKY 10
#define MASON 11
#define MCVICKER 12
#define MICHALS 13
#define MINON 14
#define MYSAN 15
#define NIECKARZ 16
#define NYE 17
#define PETRILLO 18
#define QUINN 19
#define SAADA 20
#define SHERMAN 21
#define SPEVACK 22
#define VASQUEZ 23

@interface AdvertisingGraphicsDesignViewController ()
{
    int selection;
}
@end

@implementation AdvertisingGraphicsDesignViewController

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
    
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"AdvertisingGraphicsDesign_Professors" ofType:@"plist"];
    
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
    G_BuildingViewController *previousView = [[G_BuildingViewController alloc] init];
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
    NSString *professorsNamesPath = [[NSBundle mainBundle] pathForResource:@"AdvertisingGraphicsDesign_Professors" ofType:@"plist"];
    NSString *professorsNumbersPath = [[NSBundle mainBundle] pathForResource:@"AdvertisingGraphicsDesign_Numbers" ofType:@"plist"];
    NSString *professorsEmailsPath = [[NSBundle mainBundle ] pathForResource:@"AdvertisingGraphicsDesign_Emails" ofType:@"plist"];
    
    NSArray *professorsNames, *professorsNumbers, *professorsEmails;
    professorsNames = [[NSArray alloc] initWithContentsOfFile:professorsNamesPath];
    professorsNumbers = [NSArray arrayWithContentsOfFile:professorsNumbersPath];
    professorsEmails = [NSArray arrayWithContentsOfFile:professorsEmailsPath];
    
    if (selection == ADAE) {
        
        [professorName setText:[professorsNames objectAtIndex:0]];
        [email setText:[professorsEmails objectAtIndex:0]];
        [telephone setText:[professorsNumbers objectAtIndex:0]];
    }
    
    else if (selection == APTEKAR)
    {
        [professorName setText:[professorsNames objectAtIndex:1]];
        [email setText:[professorsEmails objectAtIndex:1]];
        [telephone setText:[professorsNumbers objectAtIndex:1]];
    }
    
    else if (selection == BARFOOT)
    {
        [professorName setText:[professorsNames objectAtIndex:2]];
        [email setText:[professorsEmails objectAtIndex:2]];
        [telephone setText:[professorsNumbers objectAtIndex:2]];
    }
    
    else if (selection == BLEHL)
    {
        [professorName setText:[professorsNames objectAtIndex:3]];
        [email setText:[professorsEmails objectAtIndex:3]];
        [telephone setText:[professorsNumbers objectAtIndex:3]];
    }
    
    else if (selection == CAPUTO)
    {
        
        [professorName setText:[professorsNames objectAtIndex:4]];
        [email setText:[professorsEmails objectAtIndex:4]];
        [telephone setText:[professorsNumbers objectAtIndex:4]];
    }
    
    else if (selection == CARR)
    {
        [professorName setText:[professorsNames objectAtIndex:5]];
        [email setText:[professorsEmails objectAtIndex:5]];
        [telephone setText:[professorsNumbers objectAtIndex:5]];
    }
    
    else if (selection == GUILIANI)
    {
        [professorName setText:[professorsNames objectAtIndex:6]];
        [email setText:[professorsEmails objectAtIndex:6]];
        [telephone setText:[professorsNumbers objectAtIndex:6]];
    }
    
    else if (selection == GOETZ)
    {
        [professorName setText:[professorsNames objectAtIndex:7]];
        [email setText:[professorsEmails objectAtIndex:7]];
        [telephone setText:[professorsNumbers objectAtIndex:7]];
    }
    
    else if (selection == HAYES)
    {
        [professorName setText:[professorsNames objectAtIndex:8]];
        [email setText:[professorsEmails objectAtIndex:8]];
        [telephone setText:[professorsNumbers objectAtIndex:8]];
    }
    
    else if (selection == HOLDEN)
    {
        [professorName setText:[professorsNames objectAtIndex:9]];
        [email setText:[professorsEmails objectAtIndex:9]];
        [telephone setText:[professorsNumbers objectAtIndex:9]];
    }
    
    else if (selection == KRASHINSKY)
    {
        [professorName setText:[professorsNames objectAtIndex:10]];
        [email setText:[professorsEmails objectAtIndex:10]];
        [telephone setText:[professorsNumbers objectAtIndex:10]];
    }
    
    else if (selection == MASON)
    {
        [professorName setText:[professorsNames objectAtIndex:11]];
        [email setText:[professorsEmails objectAtIndex:11]];
        [telephone setText:[professorsNumbers objectAtIndex:11]];
    }
    
    else if (selection == MCVICKER)
    {
        [professorName setText:[professorsNames objectAtIndex:12]];
        [email setText:[professorsEmails objectAtIndex:12]];
        [telephone setText:[professorsNumbers objectAtIndex:12]];
    }
    
    else if (selection == MICHALS)
    {
        [professorName setText:[professorsNames objectAtIndex:13]];
        [email setText:[professorsEmails objectAtIndex:13]];
        [telephone setText:[professorsNumbers objectAtIndex:13]];
    }
    
    else if (selection == MINON)
    {
        [professorName setText:[professorsNames objectAtIndex:14]];
        [email setText:[professorsEmails objectAtIndex:14]];
        [telephone setText:[professorsNumbers objectAtIndex:14]];
    }
    
    else if (selection == MYSAN)
    {
        [professorName setText:[professorsNames objectAtIndex:15]];
        [email setText:[professorsEmails objectAtIndex:15]];
        [telephone setText:[professorsNumbers objectAtIndex:15]];
    }
    
    else if (selection == NIECKARZ)
    {
        [professorName setText:[professorsNames objectAtIndex:16]];
        [email setText:[professorsEmails objectAtIndex:16]];
        [telephone setText:[professorsNumbers objectAtIndex:16]];
    }
    
    else if (selection == NYE)
    {
        [professorName setText:[professorsNames objectAtIndex:17]];
        [email setText:[professorsEmails objectAtIndex:17]];
        [telephone setText:[professorsNumbers objectAtIndex:17]];
    }
    
    else if (selection == PETRILLO)
    {
        [professorName setText:[professorsNames objectAtIndex:18]];
        [email setText:[professorsEmails objectAtIndex:18]];
        [telephone setText:[professorsNumbers objectAtIndex:18]];
    }
    
    else if (selection == QUINN)
    {
        [professorName setText:[professorsNames objectAtIndex:19]];
        [email setText:[professorsEmails objectAtIndex:19]];
        [telephone setText:[professorsNumbers objectAtIndex:19]];
    }
    
    else if (selection == SAADA)
    {
        [professorName setText:[professorsNames objectAtIndex:20]];
        [email setText:[professorsEmails objectAtIndex:20]];
        [telephone setText:[professorsNumbers objectAtIndex:20]];
    }
    
    else if (selection == SHERMAN)
    {
        [professorName setText:[professorsNames objectAtIndex:21]];
        [email setText:[professorsEmails objectAtIndex:21]];
        [telephone setText:[professorsNumbers objectAtIndex:21]];
    }
    
    else if (selection == SPEVACK)
    {
        [professorName setText:[professorsNames objectAtIndex:22]];
        [email setText:[professorsEmails objectAtIndex:22]];
        [telephone setText:[professorsNumbers objectAtIndex:22]];
    }
    
    else if (selection == VASQUEZ)
    {
        [professorName setText:[professorsNames objectAtIndex:23]];
        [email setText:[professorsEmails objectAtIndex:23]];
        [telephone setText:[professorsNumbers objectAtIndex:23]];
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

- (void)tableView:(UITableView *)theTableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    
    
    
    if (indexPath.row == ADAE) {
        selection = ADAE;
        [self professorViewSetup];
        
    }
    
    else if (indexPath.row == APTEKAR)
    {
        selection = APTEKAR;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == BLEHL)
    {
        selection = BLEHL;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == CAPUTO)
    {
        selection = CAPUTO;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == CAPUTO)
    {
        selection = CAPUTO;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == CARR)
    {
        selection = CARR;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == GUILIANI)
    {
        selection = GUILIANI;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == GOETZ)
    {
        selection = GOETZ;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == HAYES)
    {
        selection = HAYES;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == HOLDEN)
    {
        selection = HOLDEN;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == KRASHINSKY)
    {
        selection = KRASHINSKY;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == MASON)
    {
        selection = MASON;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == MCVICKER)
    {
        selection = MCVICKER;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == MICHALS)
    {
        selection = MICHALS;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == MINON)
    {
        selection = MINON;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == MYSAN)
    {
        selection = MYSAN;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == NIECKARZ)
    {
        selection = NIECKARZ;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == NYE)
    {
        selection = NYE;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == PETRILLO)
    {
        selection = PETRILLO;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == QUINN)
    {
        selection = QUINN;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == SAADA)
    {
        selection = SAADA;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == SHERMAN)
    {
        selection = SHERMAN;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == SPEVACK)
    {
        selection = SPEVACK;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == VASQUEZ)
    {
        selection = VASQUEZ;
        [self professorViewSetup];
        
    }

}
@end
