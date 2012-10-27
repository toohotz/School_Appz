//
//  N_7th.m
//  PO
//
//  Created by Jason on 9/2/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import "N_7th.h"


// professor integer comparisons
#define AFRICK 0
#define SWAINE 1
#define SINGH 2
#define BENALKI 3
#define BRUNO 4
#define CERMELE 5
#define CHEN 6
#define CHOSID 7
#define DERANEY 8
#define DESANTIS 9
#define ELLNER 10
#define GELBWASSER 11
#define GHOSH_DASTIDAR 12
#define GOUBRAN 13
#define GREENSTEIN 14
#define HALLECK 15
#define HAN 16
#define HARROW 17
#define HILL 18
#define KATZ 19
#define KRAMER 20
#define LIOU_MARK 21
#define MORGULIS 22
#define NATOV 23
#define RAPPAPORT 24
#define ROJAS 25
#define ROZENBLYUM 26
#define SCHWARZ 27
#define SHAVER 28
#define SHOUTENS 29
#define STOCKTON_BENNET 30
#define TARAPOREVALA 31
#define TRADLER 32


int selection;


#warning views need to be properly set

@interface N_7th ()

@end

@implementation N_7th





- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}


#pragma mark - Custom Navbar

-(void) navBarSetup
{
    UINavigationBar *navBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x , self.view.bounds.origin.y, 320, 44)];
    
    
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"<- Back" style:UIBarButtonItemStylePlain target:nil action:@selector(backButton)];
    //    navcontroller.navigationItem.leftBarButtonItem = backButton;
    UINavigationItem *bzButton = [[UINavigationItem alloc] init];
    
    

    
    bzButton.leftBarButtonItem = backButton;
    [navBar pushNavigationItem:bzButton animated:NO];
    
    
    
    [self.view addSubview:navBar];
//    [self.navigationController pushViewController:currentVC animated:NO];
}

#pragma mark - Custom back button
-(void) backButton
{
    N_7th *currentVC = [[N_7th alloc] init];
    [self presentViewController:currentVC animated:YES completion:NULL];
}


#pragma mark - Professor naming

-(void) professorSettingUp
{
    
//    professor names
    N_7th *Benalki, *Bruno, *Cermele, *Chen, *Chosid, *Deraney, *Desantis, *Ellner, *Gelbwasser, *Ghosh_Dastidar, *Goubran, *Greenstein, *Halleck, *Han, *Harrow, *Hill, *Katz, *Kramer, *Liou_Mark, *Morgulis, *Natov, *Rappaport, *Rojas, *Rozenblyum, *Schwarz, *Shaver, *Shoutens, *Stockton_Bennett, *Taraporevala, *Tradler;
    
    Benalki = [[N_7th alloc] init]; Bruno = [[N_7th alloc] init]; Cermele = [[N_7th alloc] init]; Chen = [[N_7th alloc] init]; Chosid = [[N_7th alloc] init]; Deraney = [[N_7th alloc] init]; Desantis = [[N_7th alloc] init]; Ellner = [[N_7th alloc ] init]; Gelbwasser = [[N_7th alloc] init]; Ghosh_Dastidar = [[N_7th alloc] init];
    Goubran = [[N_7th alloc] init]; Greenstein = [[N_7th alloc] init]; Halleck = [[N_7th alloc] init]; Han = [[N_7th alloc] init]; Harrow = [[N_7th alloc] init]; Hill = [[N_7th alloc] init]; Katz = [[N_7th alloc] init]; Kramer = [[N_7th alloc] init]; Liou_Mark = [[N_7th alloc] init]; Morgulis = [[N_7th alloc] init ]; Natov = [[N_7th alloc] init]; Rappaport = [[N_7th alloc] init]; Rojas = [[N_7th alloc] init]; Rozenblyum = [[N_7th alloc] init]; Schwarz = [[N_7th alloc] init]; Shaver = [[N_7th alloc] init]; Shoutens = [[N_7th alloc] init]; Stockton_Bennett = [[N_7th alloc] init]; Taraporevala = [[N_7th alloc] init]; Tradler = [[N_7th alloc] init];
    
    
    
    Africk = [[N_7th alloc] init];
    Singh = [[N_7th alloc] init];
    Swaine = [[N_7th alloc] init];

    /*
    //    Setting of professors names
    Africk.name = @" Henry Africk";
    Singh.name = @" Singh";
    Swaine.name = @"Dr. Terence Swaine";
    Benalki.name = @"Nadia Benalki";
    Bruno.name = @"Jean Bruno";
    Cermele.name = @"Robert Cermele";
    Chen.name = @"Zhao Chen";
    Chosid.name = @"Leo Chosid";
    Deraney.name = @"Peter Deraney";
    Desantis.name = @"Dominick Desantis";
    Ellner.name = @"Johanna Ellner";
    Gelbwasser.name = @"Frank Gelbwasser";
    Ghosh_Dastidar.name = @"Urmi Ghosh-Dastidar";
    Goubran.name = @"Nader Goubran";
    Greenstein.name = @"Joel Greenstein";
    Halleck.name = @"Ezra Halleck";
    Han.name = @"Sandie Han";
    Harrow.name = @"Madeline Harrow";
    Hill.name = @"Earl Hill";
    Katz.name = @"Neil Katz";
    */
    
    //    Setting of professors' table names
    Africk.tableName = @"Professor Africk";
    Swaine.tableName = @"Dr. Swaine";
    Singh.tableName = @"Professor Swaine";
    Benalki.tableName = @"Professor Benalki";
    Bruno.tableName = @"Professor Bruno";
    Cermele.tableName = @"Professor Cermele";
    Chen.tableName = @"Professor Chen";
    Chosid.tableName = @"Professor Chosid";
    Deraney.tableName = @"Professor Deraney";
    Desantis.tableName = @"Professor Desantis";
    Ellner.tableName = @"Professor Ellner";
    Gelbwasser.tableName = @"Professor Gelbwasser";
    Ghosh_Dastidar.tableName = @"Professor Ghosh-Dastidar";
    Goubran.tableName = @"Professor Goubran";
    Greenstein.tableName = @"Professor Greenstein";
    Halleck.tableName = @"Profesor Halleck";
    Han.tableName = @"Professor Han";
    Harrow.tableName = @"Professor Harrow";
    Hill.tableName = @"Professor HIll";
    Katz.tableName = @"Professor Katz";
    Kramer.tableName = @"Professor Kramer";
    Liou_Mark.tableName = @"Professor Liou-Mark";
    Morgulis.tableName = @"Professor Morgulis";
    Natov.tableName = @"Professor Natov";
    Rappaport.tableName = @"Professor Rappaport";
    Rojas.tableName = @"Professor Rojas";
    Rozenblyum.tableName = @"Professor Rozenblyum";
    Schwarz.tableName = @"Professor Schwarz";
    Shaver.tableName = @"Professor Shaver";
    Shoutens.tableName = @"Professor Shoutens";
    Stockton_Bennett.tableName = @"Professor Stockton-Bennett";
    Taraporevala.tableName = @"Professor Taraporevala";
    Tradler.tableName = @"Professor Tradler";
    //    setting professors into array
    mathProfessors = [[NSArray alloc] initWithObjects:Africk.tableName, Swaine.tableName, Singh.tableName, Benalki.tableName, Bruno.tableName, Cermele.tableName, Chen.tableName, Chosid.tableName, Deraney.tableName, Desantis.tableName, Ellner.tableName, Gelbwasser.tableName, Ghosh_Dastidar.tableName, Goubran.tableName, Greenstein.tableName, Halleck.tableName, Han.tableName, Harrow.tableName, Hill.tableName, Katz.tableName, Kramer.tableName, Liou_Mark.tableName, Morgulis.tableName, Natov.tableName, Rappaport.tableName, Rojas.tableName, Rozenblyum.tableName, Schwarz.tableName, Shaver.tableName, Shoutens.tableName, Stockton_Bennett.tableName, Taraporevala.tableName, Tradler.tableName, nil];
}

#pragma mark - Professor's view

-(void) pageSetup
{
    // Setting up of labels
    UIView *professorView = [[UIView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height)];
    
//    UIView *professorView = [[UIView alloc ]initWithFrame:CGRectMake(0, 0, 320, 480)];
//    UIView *professorView = [[UIView alloc ] init];
    UILabel *professorName = [[UILabel alloc] initWithFrame:CGRectMake(15, 50, 188, 23)];
    UILabel *telephoneLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 211, 86, 21)];
    UILabel *emailLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 273, 86, 21)];
    UITextView *email = [[UITextView alloc] initWithFrame:CGRectMake(15, 310, 190, 50)];
    UITextView *telephone = [[UITextView alloc] initWithFrame:CGRectMake(15, 249, 190, 34)];
    
    [telephoneLabel setTextColor:[UIColor colorWithRed:(100/255.f) green:(149/255.f) blue:(237/255.f) alpha:1]];
    [emailLabel setTextColor:[UIColor colorWithRed:(100/255.f) green:(149/255.f) blue:(237/255.f) alpha:1]];

//    nav bar
    UINavigationBar *navBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x , self.view.bounds.origin.y, 320, 44)];
    
    
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"<- Back" style:UIBarButtonItemStylePlain target:nil action:@selector(backButton)];
    //    navcontroller.navigationItem.leftBarButtonItem = backButton;
    UINavigationItem *bzButton = [[UINavigationItem alloc] init];
    
    
    
    
    bzButton.leftBarButtonItem = backButton;
    [navBar pushNavigationItem:bzButton animated:NO];
    
    [professorView addSubview:navBar];
    
    
    
//    label formattings
    
    [telephoneLabel setText:@"Telephone:"];
    [emailLabel setText:@"Email:"];
    
    [email setDataDetectorTypes:UIDataDetectorTypeLink];
    [email setEditable:NO];
    [telephone setDataDetectorTypes:UIDataDetectorTypePhoneNumber];
    [telephone setEditable:NO];
    [professorName setFont:[UIFont fontWithName:@"TrebuchetMS-Bold" size:18]];
    
    professorView.frame = self.view.bounds;
    
    UIViewController *profVC = [[UIViewController alloc] init ];
//    profVC.view.frame = self.view.bounds;
    [profVC.view setBackgroundColor:[UIColor whiteColor]];
    NSLog(@"The selection is: %i", selection);
    
//    setup custom navigation back to previous tableview
    
    
    if (selection == AFRICK) {
        
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        
        
        
        
        [professorName setText:@"Professor Africk"];
        [email setText:@"hafrick@citytech.cuny.edu"];
        [telephone setText:@"1.718.260.5380"];

        [self.view addSubview:profVC.view];
    }
    
     if (selection == BENALKI) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Nadia Benalki"];
        [email setText:@"NBenakli@citytech.cuny.edu"];
        [telephone setText:@"1.718.260 5371"];
          [self.view addSubview:profVC.view];
    }
    
     if (selection == BRUNO) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Jean Bruno"];
        [email setText:@"JBruno@citytech.cuny.edu"];
        [telephone setText:@"718.260 5784"];
          [self.view addSubview:profVC.view];
    }
    
    if (selection == CERMELE) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Robert Cermele"];
        [email setText:@"RCermele@citytech.cuny.edu"];
        [telephone setText:@"718 260 5009"];
        
          [self.view addSubview:profVC.view];
    }
    
    if (selection == CHEN) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Zhao Chen"];
        [email setText:@"ZCheng@citytech.cuny.edu"];
        [telephone setText:@"718 260 5920"];
        [self.view addSubview: profVC.view ];

    }
    
    if (selection == CHOSID) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Leo Chosid"];
        [email setText:@"LChosid@citytech.cuny.edu"];
        [telephone setText:@"718 260 5358"];
        [self.view addSubview: profVC.view];
    }
    
    if (selection == DERANEY) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Peter Deraney"];
        [email setText:@"PDeraney@citytech.cuny.edu"];
        [telephone setText:@"718 260 5781"];
        [self.view addSubview: profVC.view];
        
    }
    
    if (selection == DESANTIS) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Dominick Desantis"];
        [email setText:@"DDesantis@citytech.cuny.edu"];
        [telephone setText:@"718 260 5788"];
        [self.view addSubview:profVC.view];
    }
    
    if (selection == ELLNER) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Johanna Ellner"];
        [email setText:@"JEllner@citytech.cuny.edu"];
        [telephone setText:@"718 260 5356"];
        [self.view addSubview:profVC.view];
    }
    
    if (selection == GELBWASSER) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Frank Gelbwasser"];
        [email setText:@"FGelbwasser@citytech.cuny.edu"];
        [telephone setText:@"718 260 5785"];
        [self.view addSubview:profVC.view];
    } 
    
    if (selection == GHOSH_DASTIDAR) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Urmi Dastidar"];
        [email setText:@"UGhosh-Desticar@citytech.cuny.edu"];
        [telephone setText:@"718 260 5380"];
        [self.view addSubview: profVC.view];
    }
    
    if (selection == GOUBRAN) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Nader Goubran"];
        [email setText:@"NGoubran@citytech.cuny.edu"];
        [telephone setText:@"718 260 5380 "];
        [self.view addSubview:profVC.view];
    }
    
    if (selection == GREENSTEIN) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Joel Greenstein"];
        [email setText:@"JGreenstein@citytech.cuny.edui"];
        [telephone setText:@"718 260 5372"];
        [self.view addSubview:profVC.view];
    }
    
    if (selection == HALLECK) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Ezra Hallkec"];
        [email setText:@"EHalleck@citytech.cuny.edu"];
        [telephone setText:@"718 260 5931"];
        [self.view addSubview:profVC.view];
    }
    if (selection == HAN) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Sandie Han"];
        [email setText:@"SHan@citytech.cuny.edu"];
        [telephone setText:@"718 260 5926"];
        [self.view addSubview:profVC.view];
    }
    if (selection == HARROW) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Madeline Harrow"];
        [email setText:@"MHarrow@citytech.cuny.edu"];
        [telephone setText:@"718 260 5381"];
        [self.view addSubview:profVC.view];
    }
    if (selection == HILL) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Earl Hill"];
#warning Hill has no valid email address online
        [email setText:@"None available"];
        [telephone setText:@"718 260 5784"];
        [self.view addSubview:profVC.view];
    }
    if (selection == KATZ) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Neil Katz"];
        [email setText:@"NKatz@mail.citytech.cuny.edu"];
        [telephone setText:@"718 260 5782"];
        [self.view addSubview:profVC.view];
    }
    if (selection == KRAMER) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Arthur Kramer"];
        [email setText:@"AKramer@mail.citytech.cuny.edu"];
        [telephone setText:@"718 260 5927"];
        [self.view addSubview:profVC.view];
    }
    
    if (selection == LIOU_MARK) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Janet Liou-Mark"];
        [email setText:@"JLiou-Mark@citytech.cuny.edu"];
        [telephone setText:@"718 260 5929"];
        [self.view addSubview:profVC.view];
    }
    
    if (selection == MORGULIS) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Alla Morgulis"];
        [email setText:@"AMorgulis@citytech.cuny.edu"];
        [telephone setText:@"718 260 5785"];
        [self.view addSubview:profVC.view];
    }
    if (selection == NATOV) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Jonathan Natov"];
        [email setText:@"JNatov@mail.citytech.cuny.edu"];
        [telephone setText:@"718 260 5928"];
        [self.view addSubview:profVC.view];
    }
    if (selection == RAPPAPORT) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Karen Rappaport"];
        [email setText:@"KRapport@mail.citytech.cuny.edu"];
        [telephone setText:@"718 260 5349"];
        [self.view addSubview:profVC.view];
    }
    if (selection == ROJAS) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Estela Rojas"];
        [email setText:@"ERojas@citytech.cuny.edu"];
        [telephone setText:@"718 260 5359"];
        [self.view addSubview: profVC.view];
    }
    if (selection == ROZENBLYUM) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Alexander Rozenblyum"];
        [email setText:@"ARozenblyum.citytech.cuny.edu"];
        [telephone setText:@"718 260 5371"];
        [self.view addSubview: profVC.view];
    }
    if (selection == SCHWARZ) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Rita Schwarz"];
        [email setText:@"RSchwarz@citytech.cuny.edu"];
        [telephone setText:@"718 260 5780"];
        [self.view addSubview: profVC.view];
    }
    if (selection == SHAVER) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Sybil Shaver"];
        [email setText:@"SShaver@citytech.cuny.edu"];
        [telephone setText:@"718 260 5384"];
        [self.view addSubview: profVC.view];
    }
    if (selection == SHOUTENS) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Hans Shoutens"];
        [email setText:@"HShoutens@citytech.cuny.edu"];
        [telephone setText:@"718 260 5380"];
        [self.view addSubview: profVC.view];
    }
    if (selection == STOCKTON_BENNET) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Lashon Stockton_Bennett"];
#warning Not sure about email to Stockton_Bennett
        [email setText:@"LStockton_Bennett@citytech.cuny.edu"];
        [telephone setText:@"718 260 5380"];
        [self.view addSubview: profVC.view];
    }
    if (selection == TARAPOREVALA) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Arnavaz Taraporevala"];
        [email setText:@"ATaraporevala@citytech.cuny.edu"];
        [telephone setText:@"718 260 5358"];
        [self.view addSubview: profVC.view];
    }
    if (selection == TRADLER) {
        [profVC.view addSubview:telephone];
        [profVC.view addSubview:telephoneLabel];
        [profVC.view addSubview:email];
        [profVC.view addSubview:emailLabel];
        [profVC.view addSubview:professorName];
        
        [professorName setText:@"Thomas Tradler"];
        [email setText:@"TTradler@citytech.cuny.edu"];
        [telephone setText:@"718 260 5380"];
        [self.view addSubview: profVC.view];
    }
    
    
//  settings views to screen
    
    
[self.view addSubview:professorView];

[professorView addSubview:telephone];
[professorView addSubview:telephoneLabel];
[professorView addSubview:emailLabel];
[professorView addSubview:email];

    
            [self.navigationController pushViewController:profVC animated:YES];
}

#pragma mark -
- (void)viewDidLoad


{
    
    
    
//    [self navBarSetup];

    [self professorSettingUp];
    
    
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [mathProfessors count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    
    //    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    NSString *name = [mathProfessors objectAtIndex:indexPath.row];
    cell.textLabel.text = name;
    
    // Configure the cell...
    
    return cell;
}

-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *sectionName = @"Select A Professor";
    
    return sectionName;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == AFRICK) {
        selection = AFRICK;
        [self navBarSetup];
        [self pageSetup];

        
    }
    
    else if (indexPath.row == BENALKI)
    {
        selection = BENALKI;
        [self pageSetup];
    }
    
    else if (indexPath.row == BRUNO)
    {
        selection = BRUNO;
        [self pageSetup];
    }
    
    else if (indexPath.row == CERMELE)
    {
        selection = CERMELE;
        [self pageSetup];
    }
    
    else if (indexPath.row == CHEN)
    {
        selection = CHEN;
        [self pageSetup];
    }
    else if (indexPath.row == CHOSID)
    {
        selection = CHOSID;
        [self pageSetup];
    }
    else if (indexPath.row == DERANEY)
    {
        selection = DERANEY;
        [self pageSetup];
    }
    else if (indexPath.row == DESANTIS)
    {
        selection = DESANTIS;
        [self pageSetup];
    }
    else if (indexPath.row == ELLNER)
    {
        selection = ELLNER;
        [self pageSetup];
    }
    else if (indexPath.row == GELBWASSER)
    {
        selection = GELBWASSER;
        [self pageSetup];
    }
    else if (indexPath.row == GHOSH_DASTIDAR)
    {
        selection = GHOSH_DASTIDAR;
        [self pageSetup];
    }
    else if (indexPath.row == GOUBRAN)
    {
        selection = GOUBRAN;
        [self pageSetup];
    }
    else if (indexPath.row == GREENSTEIN)
    {
        selection = GOUBRAN;
        [self pageSetup];
    }
    else if (indexPath.row == HALLECK)
    {
        selection = HALLECK;
        [self pageSetup];
    }
    else if (indexPath.row == HAN)
    {
        selection = HAN;
        [self pageSetup];
    }
    // Navigation logic may go here. Create and push another view controller.
    /*
     DetailViewController *detailViewController = [[DetailViewController alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
