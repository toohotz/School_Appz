//
//  constructionCivilEngineeringPageVC.m
//  School_Appz
//
//  Created by Jason on 1/3/13.
//
//

#import "constructionCivilEngineeringPageVC.h"
#import "constructionCivilEngineeringProfessorsViewController.h"

#define AMERSTERDAM 0
#define CIOFFI 1
#define MEYER 2
#define SANTIAGO 3
#define STEGMAIER 4

@interface constructionCivilEngineeringPageVC ()

@end

@implementation constructionCivilEngineeringPageVC
@synthesize selection = _selection;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) professorPageSetup
{
    //    loading of plist information
    NSString *professorsNamesPath = [[NSBundle mainBundle] pathForResource:@"constructionCivilEngineering_List" ofType:@"plist"];
    NSString *professorsNumbersPath = [[NSBundle mainBundle] pathForResource:@"constructionCivilEngineering_Numbers" ofType:@"plist"];
    NSString *professorsEmailsPath = [[NSBundle mainBundle ] pathForResource:@"constructionCivilEngineering_Emails" ofType:@"plist"];
    
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

    if (_selection == AMERSTERDAM) {
        [professorName setText:[professorsNames objectAtIndex:AMERSTERDAM]];
        [email setText:[professorsEmails objectAtIndex:AMERSTERDAM]];
        [telephone setText:[professorsNumbers objectAtIndex:AMERSTERDAM]];
    }
    
    if (_selection == CIOFFI) {
        [professorName setText:[professorsNames objectAtIndex:CIOFFI]];
        [email setText:[professorsEmails objectAtIndex:CIOFFI]];
        [telephone setText:[professorsNumbers objectAtIndex:CIOFFI]];
    }
    
    if (_selection == MEYER) {
        [professorName setText:[professorsNames objectAtIndex:MEYER]];
        [email setText:[professorsEmails objectAtIndex:MEYER]];
        [telephone setText:[professorsNumbers objectAtIndex:MEYER]];
    }
    
    if (_selection == SANTIAGO) {
        [professorName setText:[professorsNames objectAtIndex:SANTIAGO]];
        [email setText:[professorsEmails objectAtIndex:SANTIAGO]];
        [telephone setText:[professorsNumbers objectAtIndex:SANTIAGO]];
    }
    
    if (_selection == STEGMAIER) {
        [professorName setText:[professorsNames objectAtIndex:STEGMAIER]];
        [email setText:[professorsEmails objectAtIndex:STEGMAIER]];
        [telephone setText:[professorsNumbers objectAtIndex:STEGMAIER]];
    }
    
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    [self professorPageSetup];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
