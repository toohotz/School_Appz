//
//  socialSciencePageVC.m
//  School_Appz
//
//  Created by Jason on 1/3/13.
//
//

#import "socialSciencePageVC.h"

#define AIDEN 0
#define BRAND 1
#define CAPTAPANO 2
#define CUORDILEONE 3
#define DERRINGH 4
#define GERARDI 5
#define HANNUM 6
#define KAPLAN 7
#define MCDONALD 8
#define NALVEN 9
#define PAGANO 10
#define PANAYOTAKIS 11
#define PARIDES 12
#define PARNES 13
#define RAMLALL 14
#define SISCO 15
#define TISON 16

@interface socialSciencePageVC ()

@end

@implementation socialSciencePageVC
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
    
    //    loading of plist information
    NSString *professorsNamesPath = [[NSBundle mainBundle] pathForResource:@"socialScience_Professors" ofType:@"plist"];
    NSString *professorsNumbersPath = [[NSBundle mainBundle] pathForResource:@"socialScience_Numbers" ofType:@"plist"];
    NSString *professorsEmailsPath = [[NSBundle mainBundle ] pathForResource:@"socialScience_Emails" ofType:@"plist"];
    
    NSArray *professorsNames, *professorsNumbers, *professorsEmails;
    professorsNames = [[NSArray alloc] initWithContentsOfFile:professorsNamesPath];
    professorsNumbers = [NSArray arrayWithContentsOfFile:professorsNumbersPath];
    professorsEmails = [NSArray arrayWithContentsOfFile:professorsEmailsPath];
    
    //    setting of text information
    
    if (_selection == AIDEN) {
        
        [professorName setText:[professorsNames objectAtIndex:0]];
        [email setText:[professorsEmails objectAtIndex:0]];
        [telephone setText:[professorsNumbers objectAtIndex:0]];
    }
    
     if (_selection == BRAND)
    {
        [professorName setText:[professorsNames objectAtIndex:1]];
        [email setText:[professorsEmails objectAtIndex:1]];
        [telephone setText:[professorsNumbers objectAtIndex:1]];
    }
    
     if (_selection == CAPTAPANO)
    {
        [professorName setText:[professorsNames objectAtIndex:2]];
        [email setText:[professorsEmails objectAtIndex:2]];
        [telephone setText:[professorsNumbers objectAtIndex:2]];
    }
    
     if (_selection == CUORDILEONE)
    {
        [professorName setText:[professorsNames objectAtIndex:3]];
        [email setText:[professorsEmails objectAtIndex:3]];
        [telephone setText:[professorsNumbers objectAtIndex:3]];
    }
    
     if (_selection == DERRINGH)
    {
        
        [professorName setText:[professorsNames objectAtIndex:4]];
        [email setText:[professorsEmails objectAtIndex:4]];
        [telephone setText:[professorsNumbers objectAtIndex:4]];
    }
    
     if (_selection == GERARDI)
    {
        [professorName setText:[professorsNames objectAtIndex:5]];
        [email setText:[professorsEmails objectAtIndex:5]];
        [telephone setText:[professorsNumbers objectAtIndex:5]];
    }
    
     if (_selection == HANNUM)
    {
        [professorName setText:[professorsNames objectAtIndex:6]];
        [email setText:[professorsEmails objectAtIndex:6]];
        [telephone setText:[professorsNumbers objectAtIndex:6]];
    }
    
     if (_selection == KAPLAN)
    {
        [professorName setText:[professorsNames objectAtIndex:7]];
        [email setText:[professorsEmails objectAtIndex:7]];
        [telephone setText:[professorsNumbers objectAtIndex:7]];
    }
    
     if (_selection == MCDONALD)
    {
        [professorName setText:[professorsNames objectAtIndex:8]];
        [email setText:[professorsEmails objectAtIndex:8]];
        [telephone setText:[professorsNumbers objectAtIndex:8]];
    }
    
     if (_selection == NALVEN)
    {
        [professorName setText:[professorsNames objectAtIndex:9]];
        [email setText:[professorsEmails objectAtIndex:9]];
        [telephone setText:[professorsNumbers objectAtIndex:9]];
    }
    
     if (_selection == PAGANO)
    {
        [professorName setText:[professorsNames objectAtIndex:10]];
        [email setText:[professorsEmails objectAtIndex:10]];
        [telephone setText:[professorsNumbers objectAtIndex:10]];
    }
    
     if (_selection == PANAYOTAKIS)
    {
        [professorName setText:[professorsNames objectAtIndex:11]];
        [email setText:[professorsEmails objectAtIndex:11]];
        [telephone setText:[professorsNumbers objectAtIndex:11]];
    }
    
     if (_selection == PARIDES)
    {
        [professorName setText:[professorsNames objectAtIndex:12]];
        [email setText:[professorsEmails objectAtIndex:12]];
        [telephone setText:[professorsNumbers objectAtIndex:12]];
    }
    
     if (_selection == PARNES)
    {
        [professorName setText:[professorsNames objectAtIndex:13]];
        [email setText:[professorsEmails objectAtIndex:13]];
        [telephone setText:[professorsNumbers objectAtIndex:13]];
    }
    
     if (_selection == RAMLALL)
    {
        [professorName setText:[professorsNames objectAtIndex:14]];
        [email setText:[professorsEmails objectAtIndex:14]];
        [telephone setText:[professorsNumbers objectAtIndex:14]];
    }
    
     if (_selection == SISCO)
    {
        [professorName setText:[professorsNames objectAtIndex:15]];
        [email setText:[professorsEmails objectAtIndex:15]];
        [telephone setText:[professorsNumbers objectAtIndex:15]];
    }
    
     if (_selection == TISON)
    {
        [professorName setText:[professorsNames objectAtIndex:16]];
        [email setText:[professorsEmails objectAtIndex:16]];
        [telephone setText:[professorsNumbers objectAtIndex:16]];
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
