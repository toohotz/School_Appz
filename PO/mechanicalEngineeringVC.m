//
//  mechanicalEngineeringVC.m
//  School_Appz
//
//  Created by Jason on 1/6/13.
//
//

#import "mechanicalEngineeringVC.h"

#define BENNANI 0
#define BERRI 1
#define HOLLAND 2
#define RYU 3
#define STYSH 4
#define VAISMAN 5
#define ZHANG 6

@interface mechanicalEngineeringVC ()

@end

@implementation mechanicalEngineeringVC
@synthesize selection = _selection;

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
    NSString *professorsNamesPath = [[NSBundle mainBundle] pathForResource:@"MechanicalEngineeringTechnologyProfessors" ofType:@"plist"];
    NSString *professorsNumbersPath = [[NSBundle mainBundle] pathForResource:@"MechanicalEngineeringTechnologyNumbers" ofType:@"plist"];
    NSString *professorsEmailsPath = [[NSBundle mainBundle ] pathForResource:@"MechanicalEngineeringTechnologyEmails" ofType:@"plist"];
    
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
    if (_selection == BENNANI) {
        [professorName setText:[professorsNames objectAtIndex:BENNANI]];
        [email setText:[professorsEmails objectAtIndex:BENNANI]];
        [telephone setText:[professorsNumbers objectAtIndex:BENNANI]];
    }
    
    if (_selection == BERRI) {
        [professorName setText:[professorsNames objectAtIndex:BERRI]];
        [email setText:[professorsEmails objectAtIndex:BERRI]];
        [telephone setText:[professorsNumbers objectAtIndex:BERRI]];
    }
    
    if (_selection == HOLLAND) {
        [professorName setText:[professorsNames objectAtIndex:HOLLAND]];
        [email setText:[professorsEmails objectAtIndex:HOLLAND]];
        [telephone setText:[professorsNumbers objectAtIndex:HOLLAND]];
    }
    
    if (_selection == RYU) {
        [professorName setText:[professorsNames objectAtIndex:RYU]];
        [email setText:[professorsEmails objectAtIndex:RYU]];
        [telephone setText:[professorsNumbers objectAtIndex:RYU]];
    }
    
    if (_selection == STYSH) {
        [professorName setText:[professorsNames objectAtIndex:STYSH]];
        [email setText:[professorsEmails objectAtIndex:STYSH]];
        [telephone setText:[professorsNumbers objectAtIndex:STYSH]];
        
    }
    
    if (_selection == VAISMAN) {
        [professorName setText:[professorsNames objectAtIndex:VAISMAN]];
        [email setText:[professorsEmails objectAtIndex:VAISMAN]];
        [telephone setText:[professorsNumbers objectAtIndex:VAISMAN]];
        
    }
    
    if (_selection == ZHANG) {
        [professorName setText:[professorsNames objectAtIndex:ZHANG]];
        [email setText:[professorsEmails objectAtIndex:ZHANG]];
        [telephone setText:[professorsNumbers objectAtIndex:ZHANG]];
        
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
