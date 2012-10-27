//
//  RootViewController.m
//  PO
//
//  Created by Kemar White on 7/23/11.
//  Copyright 2011 J & J Corp. All rights reserved.
//

#import "RootViewController.h"



@implementation RootViewController 


- (id)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
            self.clearsSelectionOnViewWillAppear = NO;
            self.contentSizeForViewInPopover = CGSizeMake(320.0, 600.0);
            
        }
    }


    return self;
}






- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{


    [super viewDidLoad];
    
    CGRect frame = CGRectMake(0.0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    UIView *v = [[UIView alloc] initWithFrame:frame];
    
    [v setBackgroundColor:[[UIColor alloc] initWithRed:1.0
                                                 green:0.0
                                                  blue:0.0
    
                                                 
                                                 alpha:0.1]];
    
    
    
    [self.tableView addSubview:v];
    [self.tabBarController.view addSubview:v];
    
    /*
    [self.view insertSubview:v atIndex:0];

    
    
    
    [self.tabBarController.view addSubview:v];
    [self.view addSubview:v];

    
    self.view.backgroundColor = [UIColor blueColor];
                                                  
	// Do any additional setup after loading the view, typically from a nib.
    */
//    commented out because of iPad crash reasons
    
//    

                           
                           
    

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    
    
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
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
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        // Delete the row from the data source.
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
    else if (editingStyle == UITableViewCellEditingStyleInsert)
    {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here -- for example, create and push another view controller.
}


#pragma mark - Gestures (pan)

-(void)pan:(UIGestureRecognizer *)recognizer
{
//    check when state has been changed
  
    
}


#pragma mark - Background music


-(void)PlayMusic
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"bgmusic" ofType:@"mp3"];
    NSURL *soundURL = [NSURL fileURLWithPath:path];
    AVAudioPlayer *bgMusic = [[AVAudioPlayer alloc] initWithContentsOfURL:soundURL error:NULL];
    bgMusic.numberOfLoops = -1; //Infinite loop
                                //    bgMusic.delegate = self;
    [bgMusic play];
}


@end
