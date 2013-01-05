//
//  advertisingGraphicsDesignProfessorsPageVC.m
//  School_Appz
//
//  Created by Jason on 1/5/13.
//
//

#import "advertisingGraphicsDesignProfessorsPageVC.h"

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

@interface advertisingGraphicsDesignProfessorsPageVC ()

@end

@implementation advertisingGraphicsDesignProfessorsPageVC
@synthesize selection = _selection;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


-(void) professorViewSetup
{
    //    loading of plist information
    NSString *professorsNamesPath = [[NSBundle mainBundle] pathForResource:@"AdvertisingGraphicsDesign_Professors" ofType:@"plist"];
    NSString *professorsNumbersPath = [[NSBundle mainBundle] pathForResource:@"AdvertisingGraphicsDesign_Numbers" ofType:@"plist"];
    NSString *professorsEmailsPath = [[NSBundle mainBundle ] pathForResource:@"AdvertisingGraphicsDesign_Emails" ofType:@"plist"];
    
    UILabel *professorName = [[UILabel alloc] initWithFrame:CGRectMake(15, 50, 188, 23)];
    UILabel *telephoneLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 211, 86, 21)];
    UILabel *emailLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 273, 86, 21)];
    UITextView *email = [[UITextView alloc] initWithFrame:CGRectMake(15, 310, 190, 50)];
    UITextView *telephone = [[UITextView alloc] initWithFrame:CGRectMake(15, 249, 190, 34)];
    
    [telephoneLabel setTextColor:[UIColor colorWithRed:(100/255.f) green:(149/255.f) blue:(237/255.f) alpha:1]];
    [emailLabel setTextColor:[UIColor colorWithRed:(100/255.f) green:(149/255.f) blue:(237/255.f) alpha:1]];
    
    
    //    label formattings
    
    [telephoneLabel setText:@"Telephone:"];
    [telephoneLabel setBackgroundColor:[UIColor clearColor]];
    [emailLabel setText:@"Email:"];
    [emailLabel setBackgroundColor:[UIColor clearColor]];
    
    [email setDataDetectorTypes:UIDataDetectorTypeLink];
    [email setEditable:NO];
    [email setBackgroundColor:[UIColor clearColor]];
    [telephone setDataDetectorTypes:UIDataDetectorTypePhoneNumber];
    [telephone setEditable:NO];
    [telephone setBackgroundColor:[UIColor clearColor]];
    [professorName setFont:[UIFont fontWithName:@"TrebuchetMS-Bold" size:18]];
    
    [self.view addSubview:telephone];
    [self.view addSubview: telephoneLabel];
    [self.view addSubview:email];
    [self.view addSubview:emailLabel];
    [self.view addSubview:professorName];
    [professorName setBackgroundColor:[UIColor clearColor]];
    
    NSArray *professorsNames, *professorsNumbers, *professorsEmails;
    professorsNames = [[NSArray alloc] initWithContentsOfFile:professorsNamesPath];
    professorsNumbers = [NSArray arrayWithContentsOfFile:professorsNumbersPath];
    professorsEmails = [NSArray arrayWithContentsOfFile:professorsEmailsPath];
    
    if (_selection == ADAE) {
        
        [professorName setText:[professorsNames objectAtIndex:0]];
        [email setText:[professorsEmails objectAtIndex:0]];
        [telephone setText:[professorsNumbers objectAtIndex:0]];
    }
    
    if (_selection == APTEKAR)
    {
        [professorName setText:[professorsNames objectAtIndex:1]];
        [email setText:[professorsEmails objectAtIndex:1]];
        [telephone setText:[professorsNumbers objectAtIndex:1]];
    }
    
    if (_selection == BARFOOT)
    {
        [professorName setText:[professorsNames objectAtIndex:2]];
        [email setText:[professorsEmails objectAtIndex:2]];
        [telephone setText:[professorsNumbers objectAtIndex:2]];
    }
    
    if (_selection == BLEHL)
    {
        [professorName setText:[professorsNames objectAtIndex:3]];
        [email setText:[professorsEmails objectAtIndex:3]];
        [telephone setText:[professorsNumbers objectAtIndex:3]];
    }
    
    if (_selection == CAPUTO)
    {
        
        [professorName setText:[professorsNames objectAtIndex:4]];
        [email setText:[professorsEmails objectAtIndex:4]];
        [telephone setText:[professorsNumbers objectAtIndex:4]];
    }
    
    if (_selection == CARR)
    {
        [professorName setText:[professorsNames objectAtIndex:5]];
        [email setText:[professorsEmails objectAtIndex:5]];
        [telephone setText:[professorsNumbers objectAtIndex:5]];
    }
    
    if (_selection == GUILIANI)
    {
        [professorName setText:[professorsNames objectAtIndex:6]];
        [email setText:[professorsEmails objectAtIndex:6]];
        [telephone setText:[professorsNumbers objectAtIndex:6]];
    }
    
    if (_selection == GOETZ)
    {
        [professorName setText:[professorsNames objectAtIndex:7]];
        [email setText:[professorsEmails objectAtIndex:7]];
        [telephone setText:[professorsNumbers objectAtIndex:7]];
    }
    
    if (_selection == HAYES)
    {
        [professorName setText:[professorsNames objectAtIndex:8]];
        [email setText:[professorsEmails objectAtIndex:8]];
        [telephone setText:[professorsNumbers objectAtIndex:8]];
    }
    
    if (_selection == HOLDEN)
    {
        [professorName setText:[professorsNames objectAtIndex:9]];
        [email setText:[professorsEmails objectAtIndex:9]];
        [telephone setText:[professorsNumbers objectAtIndex:9]];
    }
    
    if (_selection == KRASHINSKY)
    {
        [professorName setText:[professorsNames objectAtIndex:10]];
        [email setText:[professorsEmails objectAtIndex:10]];
        [telephone setText:[professorsNumbers objectAtIndex:10]];
    }
    
    if (_selection == MASON)
    {
        [professorName setText:[professorsNames objectAtIndex:11]];
        [email setText:[professorsEmails objectAtIndex:11]];
        [telephone setText:[professorsNumbers objectAtIndex:11]];
    }
    
    if (_selection == MCVICKER)
    {
        [professorName setText:[professorsNames objectAtIndex:12]];
        [email setText:[professorsEmails objectAtIndex:12]];
        [telephone setText:[professorsNumbers objectAtIndex:12]];
    }
    
    if (_selection == MICHALS)
    {
        [professorName setText:[professorsNames objectAtIndex:13]];
        [email setText:[professorsEmails objectAtIndex:13]];
        [telephone setText:[professorsNumbers objectAtIndex:13]];
    }
    
    if (_selection == MINON)
    {
        [professorName setText:[professorsNames objectAtIndex:14]];
        [email setText:[professorsEmails objectAtIndex:14]];
        [telephone setText:[professorsNumbers objectAtIndex:14]];
    }
    
    if (_selection == MYSAN)
    {
        [professorName setText:[professorsNames objectAtIndex:15]];
        [email setText:[professorsEmails objectAtIndex:15]];
        [telephone setText:[professorsNumbers objectAtIndex:15]];
    }
    
    if (_selection == NIECKARZ)
    {
        [professorName setText:[professorsNames objectAtIndex:16]];
        [email setText:[professorsEmails objectAtIndex:16]];
        [telephone setText:[professorsNumbers objectAtIndex:16]];
    }
    
    if (_selection == NYE)
    {
        [professorName setText:[professorsNames objectAtIndex:17]];
        [email setText:[professorsEmails objectAtIndex:17]];
        [telephone setText:[professorsNumbers objectAtIndex:17]];
    }
    
    if (_selection == PETRILLO)
    {
        [professorName setText:[professorsNames objectAtIndex:18]];
        [email setText:[professorsEmails objectAtIndex:18]];
        [telephone setText:[professorsNumbers objectAtIndex:18]];
    }
    
    if (_selection == QUINN)
    {
        [professorName setText:[professorsNames objectAtIndex:19]];
        [email setText:[professorsEmails objectAtIndex:19]];
        [telephone setText:[professorsNumbers objectAtIndex:19]];
    }
    
    if (_selection == SAADA)
    {
        [professorName setText:[professorsNames objectAtIndex:20]];
        [email setText:[professorsEmails objectAtIndex:20]];
        [telephone setText:[professorsNumbers objectAtIndex:20]];
    }
    
    if (_selection == SHERMAN)
    {
        [professorName setText:[professorsNames objectAtIndex:21]];
        [email setText:[professorsEmails objectAtIndex:21]];
        [telephone setText:[professorsNumbers objectAtIndex:21]];
    }
    
    if (_selection == SPEVACK)
    {
        [professorName setText:[professorsNames objectAtIndex:22]];
        [email setText:[professorsEmails objectAtIndex:22]];
        [telephone setText:[professorsNumbers objectAtIndex:22]];
    }
    
    if (_selection == VASQUEZ)
    {
        [professorName setText:[professorsNames objectAtIndex:23]];
        [email setText:[professorsEmails objectAtIndex:23]];
        [telephone setText:[professorsNumbers objectAtIndex:23]];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self professorViewSetup];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
