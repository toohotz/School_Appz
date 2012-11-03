//
//  mathProfessorsViewController.m
//  School_Appz
//
//  Created by Jason on 11/2/12.
//
//

#import "mathProfessorsViewController.h"
#import "N_ViewController.h"

#define AFRICK 0
#define BENALKI 1
#define BRUNO 2
#define CERMELE 3
#define CHEN 4
#define CHOSID 5
#define DERANEY 6
#define DESANTIS 7
#define ELLNER 8
#define GELBWASSER 9
#define GHOSH_DASTIDAR 10
#define GOUBRAN 11
#define GREENSTEIN 12
#define HALLECK 13
#define HAN 14
#define HARROW 15
#define HILL 16
#define KATZ 17
#define KRAMER 18
#define LIOU_MARK 19
#define MORGULIS 20
#define NATOV 21
#define RAPPAPORT 22
#define ROJAS 23
#define ROZENBLYUM 24
#define SCHWARZ 25
#define SHAVER 26
#define SHOUTENS 27
#define SINGH 28
#define STOCKTON_BENNET 29
#define TARAPOREVALA 30
#define TRADLER 31



@interface mathProfessorsViewController ()
{
    int selection;
}
@end

@implementation mathProfessorsViewController

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
    
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"Math_Professors_List" ofType:@"plist"];
    
    professors = [[NSArray alloc] initWithContentsOfFile:plistPath];
    
    
//    professors = [[NSArray alloc] initWithObjects:@"Professo1", @"Professor Dos", @"Professor Tres", nil];
}


-(void) initTableView
{
    //    ***** WORKING PART ****** //
    //    0,416,174,375
    tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 44, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
    
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    
    //    ***** WORKING PART ****** //
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
    NSString *professorsNamesPath = [[NSBundle mainBundle] pathForResource:@"Math_Professors_List" ofType:@"plist"];
    NSString *professorsNumbersPath = [[NSBundle mainBundle] pathForResource:@"Math_Professors_Numbers" ofType:@"plist"];
    NSString *professorsEmailsPath = [[NSBundle mainBundle ] pathForResource:@"Math_Professors_Emails" ofType:@"plist"];
    
    NSArray *professorsNames, *professorsNumbers, *professorsEmails;
    professorsNames = [[NSArray alloc] initWithContentsOfFile:professorsNamesPath];
    professorsNumbers = [NSArray arrayWithContentsOfFile:professorsNumbersPath];
    professorsEmails = [NSArray arrayWithContentsOfFile:professorsEmailsPath];
    
    if (selection == AFRICK) {

        [professorName setText:[professorsNames objectAtIndex:0]];
        [email setText:[professorsEmails objectAtIndex:0]];
        [telephone setText:[professorsNumbers objectAtIndex:0]];
    }
    
    else if (selection == BENALKI)
    {
        [professorName setText:[professorsNames objectAtIndex:1]];
        [email setText:[professorsEmails objectAtIndex:1]];
        [telephone setText:[professorsNumbers objectAtIndex:1]];
    }
    
    else if (selection == BRUNO)
    {
        [professorName setText:[professorsNames objectAtIndex:2]];
        [email setText:[professorsEmails objectAtIndex:2]];
        [telephone setText:[professorsNumbers objectAtIndex:2]];
    }
    
    else if (selection == CERMELE)
    {
        [professorName setText:[professorsNames objectAtIndex:3]];
        [email setText:[professorsEmails objectAtIndex:3]];
        [telephone setText:[professorsNumbers objectAtIndex:3]];
    }
    
    else if (selection == CHEN)
    {
        
        [professorName setText:[professorsNames objectAtIndex:4]];
        [email setText:[professorsEmails objectAtIndex:4]];
        [telephone setText:[professorsNumbers objectAtIndex:4]];
    }
    
    else if (selection == CHOSID)
    {
        [professorName setText:[professorsNames objectAtIndex:5]];
        [email setText:[professorsEmails objectAtIndex:5]];
        [telephone setText:[professorsNumbers objectAtIndex:5]];
    }
    
    else if (selection == DERANEY)
    {
        [professorName setText:[professorsNames objectAtIndex:6]];
        [email setText:[professorsEmails objectAtIndex:6]];
        [telephone setText:[professorsNumbers objectAtIndex:6]];
    }
    
    else if (selection == DESANTIS)
    {
        [professorName setText:[professorsNames objectAtIndex:7]];
        [email setText:[professorsEmails objectAtIndex:7]];
        [telephone setText:[professorsNumbers objectAtIndex:7]];
    }
    
    else if (selection == ELLNER)
    {
        [professorName setText:[professorsNames objectAtIndex:8]];
        [email setText:[professorsEmails objectAtIndex:8]];
        [telephone setText:[professorsNumbers objectAtIndex:8]];
    }
    
    else if (selection == GELBWASSER)
    {
        [professorName setText:[professorsNames objectAtIndex:9]];
        [email setText:[professorsEmails objectAtIndex:9]];
        [telephone setText:[professorsNumbers objectAtIndex:9]];
    }
    
    else if (selection == GHOSH_DASTIDAR)
    {
        [professorName setText:[professorsNames objectAtIndex:10]];
        [email setText:[professorsEmails objectAtIndex:10]];
        [telephone setText:[professorsNumbers objectAtIndex:10]];
    }
    
    else if (selection == GOUBRAN)
    {
        [professorName setText:[professorsNames objectAtIndex:11]];
        [email setText:[professorsEmails objectAtIndex:11]];
        [telephone setText:[professorsNumbers objectAtIndex:11]];
    }
    
    else if (selection == GREENSTEIN)
    {
        [professorName setText:[professorsNames objectAtIndex:12]];
        [email setText:[professorsEmails objectAtIndex:12]];
        [telephone setText:[professorsNumbers objectAtIndex:12]];
    }

    else if (selection == HALLECK)
    {
        [professorName setText:[professorsNames objectAtIndex:13]];
        [email setText:[professorsEmails objectAtIndex:13]];
        [telephone setText:[professorsNumbers objectAtIndex:13]];
    }
    
    else if (selection == HAN)
    {
        [professorName setText:[professorsNames objectAtIndex:14]];
        [email setText:[professorsEmails objectAtIndex:14]];
        [telephone setText:[professorsNumbers objectAtIndex:14]];
    }
    
    else if (selection == HARROW)
    {
        [professorName setText:[professorsNames objectAtIndex:15]];
        [email setText:[professorsEmails objectAtIndex:15]];
        [telephone setText:[professorsNumbers objectAtIndex:15]];
    }
    
    else if (selection == HILL)
    {
        [professorName setText:[professorsNames objectAtIndex:16]];
        [email setText:[professorsEmails objectAtIndex:16]];
        [telephone setText:[professorsNumbers objectAtIndex:16]];
    }
    
    else if (selection == KATZ)
    {
        [professorName setText:[professorsNames objectAtIndex:17]];
        [email setText:[professorsEmails objectAtIndex:17]];
        [telephone setText:[professorsNumbers objectAtIndex:17]];
    }
    
    else if (selection == KRAMER)
    {
        [professorName setText:[professorsNames objectAtIndex:18]];
        [email setText:[professorsEmails objectAtIndex:18]];
        [telephone setText:[professorsNumbers objectAtIndex:18]];
    }
    
    else if (selection == LIOU_MARK)
    {
        [professorName setText:[professorsNames objectAtIndex:19]];
        [email setText:[professorsEmails objectAtIndex:19]];
        [telephone setText:[professorsNumbers objectAtIndex:19]];
    }
    
    else if (selection == MORGULIS)
    {
        [professorName setText:[professorsNames objectAtIndex:20]];
        [email setText:[professorsEmails objectAtIndex:20]];
        [telephone setText:[professorsNumbers objectAtIndex:20]];
    }
    
    else if (selection == NATOV)
    {
        [professorName setText:[professorsNames objectAtIndex:21]];
        [email setText:[professorsEmails objectAtIndex:21]];
        [telephone setText:[professorsNumbers objectAtIndex:21]];
    }
    
    else if (selection == RAPPAPORT)
    {
        [professorName setText:[professorsNames objectAtIndex:22]];
        [email setText:[professorsEmails objectAtIndex:22]];
        [telephone setText:[professorsNumbers objectAtIndex:22]];
    }
    
    else if (selection == ROJAS)
    {
        [professorName setText:[professorsNames objectAtIndex:23]];
        [email setText:[professorsEmails objectAtIndex:23]];
        [telephone setText:[professorsNumbers objectAtIndex:23]];
    }
    
    else if (selection == ROZENBLYUM)
    {
        [professorName setText:[professorsNames objectAtIndex:24]];
        [email setText:[professorsEmails objectAtIndex:24]];
        [telephone setText:[professorsNumbers objectAtIndex:24]];
    }
    else if (selection == SCHWARZ)
    {
        [professorName setText:[professorsNames objectAtIndex:25]];
        [email setText:[professorsEmails objectAtIndex:25]];
        [telephone setText:[professorsNumbers objectAtIndex:25]];
    }
    
    else if (selection == SHAVER)
    {
        [professorName setText:[professorsNames objectAtIndex:26]];
        [email setText:[professorsEmails objectAtIndex:26]];
        [telephone setText:[professorsNumbers objectAtIndex:26]];
    }
    
    else if (selection == SHOUTENS)
    {
        [professorName setText:[professorsNames objectAtIndex:27]];
        [email setText:[professorsEmails objectAtIndex:27]];
        [telephone setText:[professorsNumbers objectAtIndex:27]];
    }
    
    else if (selection == SINGH)
    {
        [professorName setText:[professorsNames objectAtIndex:28]];
        [email setText:[professorsEmails objectAtIndex:28]];
        [telephone setText:[professorsNumbers objectAtIndex:28]];
    }
    
    else if (selection == STOCKTON_BENNET)
    {
        [professorName setText:[professorsNames objectAtIndex:29]];
        [email setText:[professorsEmails objectAtIndex:29]];
        [telephone setText:[professorsNumbers objectAtIndex:29]];
    }
    
    else if (selection == TARAPOREVALA)
    {
        [professorName setText:[professorsNames objectAtIndex:30]];
        [email setText:[professorsEmails objectAtIndex:30]];
        [telephone setText:[professorsNumbers objectAtIndex:30]];
    }
    
    else if (selection == TRADLER)
    {
        [professorName setText:[professorsNames objectAtIndex:31]];
        [email setText:[professorsEmails objectAtIndex:31]];
        [telephone setText:[professorsNumbers objectAtIndex:31]];
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
    NSString *sectionName = @"Select A professor";
    
    return sectionName;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == AFRICK) {
        selection = AFRICK;
        [self professorViewSetup];
        
    }
    
    else if (indexPath.row == BENALKI)
    {
        selection = BENALKI;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == BRUNO)
    {
        selection = BRUNO;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == CERMELE)
    {
        selection = CERMELE;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == CHEN)
    {
        selection = CHEN;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == CHOSID)
    {
        selection = CHOSID;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == DERANEY)
    {
        selection = DERANEY;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == DESANTIS)
    {
        selection = DESANTIS;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == ELLNER)
    {
        selection = ELLNER;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == GELBWASSER)
    {
        selection = GELBWASSER;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == GHOSH_DASTIDAR)
    {
        selection = GHOSH_DASTIDAR;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == GOUBRAN)
    {
        selection = GOUBRAN;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == GREENSTEIN)
    {
        selection = GREENSTEIN;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == HALLECK)
    {
        selection = HALLECK;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == HAN)
    {
        selection = HAN;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == HARROW)
    {
        selection = HARROW;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == HILL)
    {
        selection = HILL;
        [self professorViewSetup];
    }
    
    else if (indexPath.row == KATZ)
    {
        selection = KATZ;
        [self professorViewSetup];
    }

    else if (indexPath.row == KRAMER)
    {
        selection = KRAMER;
        [self professorViewSetup];
    }

    else if (indexPath.row == LIOU_MARK)
    {
        selection = LIOU_MARK;
        [self professorViewSetup];
    }

    else if (indexPath.row == MORGULIS)
    {
        selection = MORGULIS;
        [self professorViewSetup];
    }

    else if (indexPath.row == NATOV)
    {
        selection = NATOV;
        [self professorViewSetup];
    }

    else if (indexPath.row == RAPPAPORT)
    {
        selection = RAPPAPORT;
        [self professorViewSetup];
    }

    else if (indexPath.row == ROJAS)
    {
        selection = ROJAS;[self professorViewSetup];
        
    }

    else if (indexPath.row == ROZENBLYUM)
    {
        selection = ROZENBLYUM;
        [self professorViewSetup];
    }

    else if (indexPath.row == SCHWARZ)
    {
        selection = SCHWARZ;
        [self professorViewSetup];
    }

    else if (indexPath.row == SHAVER)
    {
        selection = SHAVER;
        [self professorViewSetup];
    }

    else if (indexPath.row == SHOUTENS)
    {
        selection = SHOUTENS;
        [self professorViewSetup];
    }

    else if (indexPath.row == SINGH)
    {
        selection = SINGH;
        [self professorViewSetup];
    }

    else if (indexPath.row == STOCKTON_BENNET)
    {
        selection = STOCKTON_BENNET;
        [self professorViewSetup];
    }
        
        else if (indexPath.row == TARAPOREVALA)
    {
        selection = TARAPOREVALA;
        [self professorViewSetup];
    }
        else if (indexPath.row == TRADLER)
    {
        selection = TRADLER;
        [self professorViewSetup];
    }

    
    
    
}


@end
