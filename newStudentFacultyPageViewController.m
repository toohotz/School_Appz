//
//  newStudentFacultyPageViewController.m
//  School_Appz
//
//  Created by Jason on 1/3/13.
//
//

#import "newStudentFacultyPageViewController.h"

#define ALPER 0
#define DEMARFIO 1
#define DORESTANT 2
#define TROIA 3

@interface newStudentFacultyPageViewController ()

@end

@implementation newStudentFacultyPageViewController
@synthesize facultyChoice = _facultyChoice;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) viewSetup
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
    [emailLabel setText:@"Email:"];
    
    [email setDataDetectorTypes:UIDataDetectorTypeLink];
    [email setEditable:NO];
    [email setBackgroundColor:[UIColor clearColor]];
    [emailLabel setBackgroundColor:[UIColor clearColor]];
    [telephone setDataDetectorTypes:UIDataDetectorTypePhoneNumber];
    [telephone setEditable:NO];
    [telephone setBackgroundColor:[UIColor clearColor]];
    [telephoneLabel setBackgroundColor:[UIColor clearColor]];
    [professorName setFont:[UIFont fontWithName:@"TrebuchetMS-Bold" size:18]];
    
    [self.view addSubview:telephone];
    [self. view addSubview:telephoneLabel];
    [self.view addSubview:email];
    [self.view addSubview:emailLabel];
    [self. view addSubview:professorName];
    
    //    loading of plist information
    NSString *professorsNamesPath = [[NSBundle mainBundle] pathForResource:@"New_Student_List" ofType:@"plist"];
    NSString *professorsNumbersPath = [[NSBundle mainBundle] pathForResource:@"New_Student_Numbers" ofType:@"plist"];
    NSString *professorsEmailsPath = [[NSBundle mainBundle ] pathForResource:@"New_Student_Emails" ofType:@"plist"];
    
    NSArray *professorsNames, *professorsNumbers, *professorsEmails;
    professorsNames = [[NSArray alloc] initWithContentsOfFile:professorsNamesPath];
    professorsNumbers = [NSArray arrayWithContentsOfFile:professorsNumbersPath];
    professorsEmails = [NSArray arrayWithContentsOfFile:professorsEmailsPath];
    
    if (_facultyChoice == ALPER) {
        [professorName setText:[professorsNames objectAtIndex:ALPER]];
        [email setText:[professorsEmails objectAtIndex:ALPER]];
        [telephone setText:[professorsNumbers objectAtIndex:ALPER]];
    }
    
    if (_facultyChoice == DEMARFIO) {
        [professorName setText:[professorsNames objectAtIndex:DEMARFIO]];
        [email setText:[professorsEmails objectAtIndex:DEMARFIO]];
        [telephone setText:[professorsNumbers objectAtIndex:DEMARFIO]];
    }
    
    if (_facultyChoice == DORESTANT) {
        [professorName setText:[professorsNames objectAtIndex:DORESTANT]];
        [email setText:[professorsEmails objectAtIndex:DORESTANT]];
        [telephone setText:[professorsNumbers objectAtIndex:DORESTANT]];
    }
    
    if (_facultyChoice == TROIA) {
        [professorName setText:[professorsNames objectAtIndex:TROIA]];
        [email setText:[professorsEmails objectAtIndex:TROIA]];
        [telephone setText:[professorsNumbers objectAtIndex:TROIA]];
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self viewSetup];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
