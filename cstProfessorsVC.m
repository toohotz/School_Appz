//
//  cstProfessorsVC.m
//  School_Appz
//
//  Created by Jason on 1/4/13.
//
//

#import "cstProfessorsVC.h"

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

@interface cstProfessorsVC ()

@end

@implementation cstProfessorsVC
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
    NSString *professorsNamesPath = [[NSBundle mainBundle] pathForResource:@"CST_Professor_List" ofType:@"plist"];
    NSString *professorsNumbersPath = [[NSBundle mainBundle] pathForResource:@"CST_Professor_Number" ofType:@"plist"];
    NSString *professorsEmailsPath = [[NSBundle mainBundle ] pathForResource:@"CST_Professor_Email" ofType:@"plist"];
    
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
    
    if (_selection == ACCUMANNO_BRANKEY) {
        
        [professorName setText:[professorsNames objectAtIndex:0]];
        [email setText:[professorsEmails objectAtIndex:0]];
        [telephone setText:[professorsNumbers objectAtIndex:0]];
    }
    
    if (_selection == ARCHIBALD)
    {
        [professorName setText:[professorsNames objectAtIndex:1]];
        [email setText:[professorsEmails objectAtIndex:1]];
        [telephone setText:[professorsNumbers objectAtIndex:1]];
    }
    
    if (_selection == BELLEHSEN)
    {
        [professorName setText:[professorsNames objectAtIndex:2]];
        [email setText:[professorsEmails objectAtIndex:2]];
        [telephone setText:[professorsNumbers objectAtIndex:2]];
    }
    
    if (_selection == CABO)
    {
        [professorName setText:[professorsNames objectAtIndex:3]];
        [email setText:[professorsEmails objectAtIndex:3]];
        [telephone setText:[professorsNumbers objectAtIndex:3]];
    }
    
    if (_selection == CATON)
    {
        
        [professorName setText:[professorsNames objectAtIndex:4]];
        [email setText:[professorsEmails objectAtIndex:4]];
        [telephone setText:[professorsNumbers objectAtIndex:4]];
    }
    
    if (_selection == EBBERS)
    {
        [professorName setText:[professorsNames objectAtIndex:5]];
        [email setText:[professorsEmails objectAtIndex:5]];
        [telephone setText:[professorsNumbers objectAtIndex:5]];
    }
    
    if (_selection == GRAHAM)
    {
        [professorName setText:[professorsNames objectAtIndex:6]];
        [email setText:[professorsEmails objectAtIndex:6]];
        [telephone setText:[professorsNumbers objectAtIndex:6]];
    }
    
    if (_selection == GUIDONE)
    {
        [professorName setText:[professorsNames objectAtIndex:7]];
        [email setText:[professorsEmails objectAtIndex:7]];
        [telephone setText:[professorsNumbers objectAtIndex:7]];
    }
    
    if (_selection == HERNANDEZ)
    {
        [professorName setText:[professorsNames objectAtIndex:8]];
        [email setText:[professorsEmails objectAtIndex:8]];
        [telephone setText:[professorsNumbers objectAtIndex:8]];
    }
    
    if (_selection == HOLLEY)
    {
        [professorName setText:[professorsNames objectAtIndex:9]];
        [email setText:[professorsEmails objectAtIndex:9]];
        [telephone setText:[professorsNumbers objectAtIndex:9]];
    }
    
    if (_selection == LI)
    {
        [professorName setText:[professorsNames objectAtIndex:10]];
        [email setText:[professorsEmails objectAtIndex:10]];
        [telephone setText:[professorsNumbers objectAtIndex:10]];
    }
    
    if (_selection == LI_HONG)
    {
        [professorName setText:[professorsNames objectAtIndex:11]];
        [email setText:[professorsEmails objectAtIndex:11]];
        [telephone setText:[professorsNumbers objectAtIndex:11]];
    }
    
    if (_selection == MALYUTA)
    {
        [professorName setText:[professorsNames objectAtIndex:12]];
        [email setText:[professorsEmails objectAtIndex:12]];
        [telephone setText:[professorsNumbers objectAtIndex:12]];
    }
    
    if (_selection == MILNOAS)
    {
        [professorName setText:[professorsNames objectAtIndex:13]];
        [email setText:[professorsEmails objectAtIndex:13]];
        [telephone setText:[professorsNumbers objectAtIndex:13]];
    }
    
    if (_selection == OUDEJEHANE)
    {
        [professorName setText:[professorsNames objectAtIndex:14]];
        [email setText:[professorsEmails objectAtIndex:14]];
        [telephone setText:[professorsNumbers objectAtIndex:14]];
    }
    
    if (_selection == PINTO)
    {
        [professorName setText:[professorsNames objectAtIndex:15]];
        [email setText:[professorsEmails objectAtIndex:15]];
        [telephone setText:[professorsNumbers objectAtIndex:15]];
    }
    
    if (_selection == REYES)
    {
        [professorName setText:[professorsNames objectAtIndex:16]];
        [email setText:[professorsEmails objectAtIndex:16]];
        [telephone setText:[professorsNumbers objectAtIndex:16]];
    }
    
    if (_selection == RODNEY)
    {
        [professorName setText:[professorsNames objectAtIndex:17]];
        [email setText:[professorsEmails objectAtIndex:17]];
        [telephone setText:[professorsNumbers objectAtIndex:17]];
    }
    
    if (_selection == SHAHIDULLAH)
    {
        [professorName setText:[professorsNames objectAtIndex:18]];
        [email setText:[professorsEmails objectAtIndex:18]];
        [telephone setText:[professorsNumbers objectAtIndex:18]];
    }
    
    if (_selection == SIMMONS)
    {
        [professorName setText:[professorsNames objectAtIndex:19]];
        [email setText:[professorsEmails objectAtIndex:19]];
        [telephone setText:[professorsNumbers objectAtIndex:19]];
    }
    
    if (_selection == VIGLINA)
    {
        [professorName setText:[professorsNames objectAtIndex:20]];
        [email setText:[professorsEmails objectAtIndex:20]];
        [telephone setText:[professorsNumbers objectAtIndex:20]];
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
