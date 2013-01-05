//
//  advertisingGraphicsDesignProfessorsViewController.m
//  School_Appz
//
//  Created by Jason on 1/5/13.
//
//

#import "advertisingGraphicsDesignProfessorsViewController.h"
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


@interface advertisingGraphicsDesignProfessorsViewController ()

@end

@implementation advertisingGraphicsDesignProfessorsViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
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


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addProfessorsInArray];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

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

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
 
     advertisingGraphicsDesignProfessorsPageVC *detailViewController = [[advertisingGraphicsDesignProfessorsPageVC alloc] init];

    if (indexPath.row == ADAE) {
        detailViewController.selection = ADAE;
        
        
    }
    
    if (indexPath.row == APTEKAR)
    {
        detailViewController.selection = APTEKAR;
        
    }
    
    if (indexPath.row == BLEHL)
    {
        detailViewController.selection = BLEHL;
        
    }
    
    if (indexPath.row == CAPUTO)
    {
        detailViewController.selection = CAPUTO;
        
    }
    
    if (indexPath.row == CAPUTO)
    {
        detailViewController.selection = CAPUTO;
        
    }
    
    if (indexPath.row == CARR)
    {
        detailViewController.selection = CARR;
        
    }
    
    if (indexPath.row == GUILIANI)
    {
        detailViewController.selection = GUILIANI;
        
    }
    
    if (indexPath.row == GOETZ)
    {
        detailViewController.selection = GOETZ;
        
    }
    
    if (indexPath.row == HAYES)
    {
        detailViewController.selection = HAYES;
        
    }
    
    if (indexPath.row == HOLDEN)
    {
        detailViewController.selection = HOLDEN;
        
    }
    
    if (indexPath.row == KRASHINSKY)
    {
        detailViewController.selection = KRASHINSKY;
        
    }
    
    if (indexPath.row == MASON)
    {
        detailViewController.selection = MASON;
        
    }
    
    if (indexPath.row == MCVICKER)
    {
        detailViewController.selection = MCVICKER;
        
    }
    
    if (indexPath.row == MICHALS)
    {
        detailViewController.selection = MICHALS;
        
    }
    
    if (indexPath.row == MINON)
    {
        detailViewController.selection = MINON;
        
    }
    
    if (indexPath.row == MYSAN)
    {
        detailViewController.selection = MYSAN;
        
    }
    
    if (indexPath.row == NIECKARZ)
    {
        detailViewController.selection = NIECKARZ;
        
    }
    
    if (indexPath.row == NYE)
    {
        detailViewController.selection = NYE;
        
    }
    
    if (indexPath.row == PETRILLO)
    {
        detailViewController.selection = PETRILLO;
        
    }
    
    if (indexPath.row == QUINN)
    {
        detailViewController.selection = QUINN;
        
    }
    
    if (indexPath.row == SAADA)
    {
        detailViewController.selection = SAADA;
        
    }
    
    if (indexPath.row == SHERMAN)
    {
        detailViewController.selection = SHERMAN;
        
    }
    
    if (indexPath.row == SPEVACK)
    {
        detailViewController.selection = SPEVACK;
        
    }
    
    if (indexPath.row == VASQUEZ)
    {
        detailViewController.selection = VASQUEZ;
        
        
    }
    
    
    
     [self.navigationController pushViewController:detailViewController animated:YES];

}

@end
