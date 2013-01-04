//
//  professor_testViewController.m
//  School_Appz
//
//  Created by Jason on 1/3/13.
//
//

#import "professor_testViewController.h"
#import "emt_cetProfessorsViewController.h"

#define ARMSTRONG 0
#define BLANK 1
#define CARRANZA 2
#define CARRINGTON 3
#define DERMAN 4
#define ELKINS 5
#define HUSSEIN 6
#define MORTON 7
#define RAZUKAS 8
#define WATHERSPOON 9
#define ZARATAN 10
#define ZIA 11


@interface professor_testViewController ()

@end

@implementation professor_testViewController

@synthesize professorSelected = _professorSelected;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) pageSetup
{
    //    loading of plist information
    NSString *professorsNamesPath = [[NSBundle mainBundle] pathForResource:@"EMT_CET_List" ofType:@"plist"];
    NSString *professorsNumbersPath = [[NSBundle mainBundle] pathForResource:@"EMT_CET_Numbers" ofType:@"plist"];
    NSString *professorsEmailsPath = [[NSBundle mainBundle ] pathForResource:@"EMT_CET_Emails" ofType:@"plist"];
    
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
    
//    setting of text information
    

            
    
    if (_professorSelected == ARMSTRONG) {
        [professorName setText:[professorsNames objectAtIndex:ARMSTRONG]];
        [email setText:[professorsEmails objectAtIndex:ARMSTRONG]];
        [telephone setText:[professorsNumbers objectAtIndex:ARMSTRONG]];
    }
    
    if (_professorSelected == BLANK) {
        [professorName setText:[professorsNames objectAtIndex:1]];
        [email setText:[professorsEmails objectAtIndex:1]];
        [telephone setText:[professorsNumbers objectAtIndex:1]];
    }
    
    if (_professorSelected == CARRANZA) {
        [professorName setText:[professorsNames objectAtIndex:2]];
        [email setText:[professorsEmails objectAtIndex:2]];
        [telephone setText:[professorsNumbers objectAtIndex:2]];
    }
    
    if (_professorSelected == CARRINGTON) {
        [professorName setText:[professorsNames objectAtIndex:3]];
        [email setText:[professorsEmails objectAtIndex:3]];
        [telephone setText:[professorsNumbers objectAtIndex:3]];
    }
    
    if (_professorSelected == DERMAN) {
        [professorName setText:[professorsNames objectAtIndex:4]];
        [email setText:[professorsEmails objectAtIndex:4]];
        [telephone setText:[professorsNumbers objectAtIndex:4]];
    }

    if (_professorSelected == ELKINS) {
        [professorName setText:[professorsNames objectAtIndex:5]];
        [email setText:[professorsEmails objectAtIndex:5]];
        [telephone setText:[professorsNumbers objectAtIndex:5]];
    }
    
    if (_professorSelected == HUSSEIN) {
        [professorName setText:[professorsNames objectAtIndex:6]];
        [email setText:[professorsEmails objectAtIndex:6]];
        [telephone setText:[professorsNumbers objectAtIndex:6]];
    }
    
    if (_professorSelected == MORTON) {
        [professorName setText:[professorsNames objectAtIndex:7]];
        [email setText:[professorsEmails objectAtIndex:7]];
        [telephone setText:[professorsNumbers objectAtIndex:7]];
    }
    
    if (_professorSelected == RAZUKAS) {
        [professorName setText:[professorsNames objectAtIndex:8]];
        [email setText:[professorsEmails objectAtIndex:8]];
        [telephone setText:[professorsNumbers objectAtIndex:8]];
    }
    
    if (_professorSelected == WATHERSPOON) {
        [professorName setText:[professorsNames objectAtIndex:9]];
        [email setText:[professorsEmails objectAtIndex:9]];
        [telephone setText:[professorsNumbers objectAtIndex:9]];
    }
    
    if (_professorSelected == ZARATAN) {
        [professorName setText:[professorsNames objectAtIndex:10]];
        [email setText:[professorsEmails objectAtIndex:10]];
        [telephone setText:[professorsNumbers objectAtIndex:10]];
    }
    
    if (_professorSelected == ZIA) {
        [professorName setText:[professorsNames objectAtIndex:ZIA]];
        [email setText:[professorsEmails objectAtIndex:ZIA]];
        [telephone setText:[professorsNumbers objectAtIndex:ZIA]];
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];

    [self pageSetup];



}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
