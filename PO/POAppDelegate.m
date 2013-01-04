//
//  POAppDelegate.m
//  PO
//
//  Created by Kemar White on 7/23/11.
//  Copyright 2011 J & J Corp. All rights reserved.
//

#import "POAppDelegate.h"
#import "initialVC.h"



@implementation POAppDelegate

@synthesize window = _window;
@synthesize tabController = _tabController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    initialVC *initialViewController = [[initialVC alloc] init];
    

    UINavigationController *initialNavigationController = [[UINavigationController alloc] initWithRootViewController:initialViewController];
    
    [self.window addSubview:initialNavigationController.view];
    
    
    
//    custom uitabcontroller
    CGRect frame = CGRectMake(0, 0, self.window.bounds.size.width, self.window.bounds.size.height);
    UIView *v = [[UIView alloc] initWithFrame:frame];
    
    [v setBackgroundColor:[[UIColor alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:0.1]];
    
    
    

//
    
//    set background

    [self scheduledOffDays];
    [self.window makeKeyAndVisible];
    
    
//    initialVC *firstVC = [[initialVC alloc] init];
    
    
    NSString * const TEST_NOTIF =  @"Test notification Complete.";
    [[NSNotificationCenter defaultCenter] postNotificationName:TEST_NOTIF object:nil];
    
    
    NSString *newDateString = @"11-28-2012 11:13";
    
    UILocalNotification *globalNote = [[UILocalNotification alloc]init];
    NSDate *testDate = [NSDate date];
    NSDateFormatter *dateForm = [[NSDateFormatter alloc] init];
    [dateForm setDateFormat:@"MM-dd-yyyy hh:mm a"];
    
    NSDate *newDate = [dateForm dateFromString:newDateString];
    NSString *dateString = [dateForm stringFromDate:testDate];
    NSString *newDateStringz = [dateForm stringFromDate:newDate];
    NSLog(@"The date formatted is: %@", dateString);
    NSLog(@"The new date is to be: %@", newDateStringz);
    
    
    
    
    
    
//    globalNote.fireDate = goDate;
    globalNote.fireDate = newDate;
    
//    globalNote.timeZone = [NSTimeZone systemTimeZone];
    globalNote.alertBody = @"This is my other notification";
    globalNote.alertAction = @"Congrats!";
    globalNote.soundName = UILocalNotificationDefaultSoundName;

    
//    [[UIApplication sharedApplication] scheduleLocalNotification:globalNote];
    
    return YES;
}


#pragma mark - Days off functions

-(void) scheduledOffDays
{
    UIApplication *appz = [UIApplication sharedApplication];
    UILocalNotification *alarmz = [[UILocalNotification alloc] init];
   
//    the dates
    NSString *jewsihHolidays_1_String = @"Sep 17, 2012";
    NSString *jewsihHolidays_2_String = @"Sep 18, 2012";
    NSString *Sept_25Holiday = @"Sep 25, 2012"; NSString *Sept_26Holiday = @"Sep 26, 2012";
    
    
   //    Sept Holidays 
    NSDate *jewsihHolidays_1_Date;
    NSDate *jewsihHolidays_2_Date;
    NSDate *Sept_25Date; NSDate *Sept_26Date;
    
    NSDate *now = [NSDate date];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateStyle:NSDateFormatterMediumStyle];
    
    jewsihHolidays_1_Date = [dateFormat dateFromString:jewsihHolidays_1_String];
    jewsihHolidays_2_Date = [dateFormat dateFromString:jewsihHolidays_2_String];
    

    
    Sept_25Date = [dateFormat dateFromString:Sept_25Holiday];
    Sept_26Date = [dateFormat dateFromString:Sept_26Holiday];
    
    
//    Oct Holidays
    NSString *Oct8_Holiday = @"Oct 8, 2012";
    NSString *Oct10_MondaySchedule = @"Oct 10, 2012";
    
    NSDate *Oct8;
    NSDate *Oct10;
    
    Oct8 = [dateFormat dateFromString:Oct8_Holiday];
    Oct10 = [dateFormat dateFromString:Oct10_MondaySchedule];
//      Nov Dates
    NSString *Nov12_LastWithdrawl = @"Nov 12, 2012";
    NSString *Nov13_SpringRegistration = @"Nov 13, 2012";
//    thanks giving dates
    NSString *Nov22_ThanksgivingBreak = @"Nov 22, 2012"; NSString *Nov23_ThanksgivingBreak = @"Nov 23, 2012"; NSString *Nov24_ThanksgivingBreak = @"Nov 24, 2012"; NSString *Nov25_ThanksgivingBreak = @"Nov 25, 2012";
    
    NSDate *Nov22_ThanksgivingBreakDate, *Nov23_ThanksgivingBreakDate, *Nov24_ThanksgivingBreakDate, *Nov25_ThanksgivingBreakDate;
    
    Nov22_ThanksgivingBreakDate = [dateFormat dateFromString:Nov22_ThanksgivingBreak];
    Nov23_ThanksgivingBreakDate = [dateFormat dateFromString:Nov23_ThanksgivingBreak];
    Nov24_ThanksgivingBreakDate = [dateFormat dateFromString:Nov24_ThanksgivingBreak];
    Nov25_ThanksgivingBreakDate = [dateFormat dateFromString:Nov25_ThanksgivingBreak];
//    end of thanksgiving dates
    
    NSDate *LastWithdrawlDate, *SpringRegistrationDate;
    LastWithdrawlDate = [dateFormat dateFromString:Nov12_LastWithdrawl];
    SpringRegistrationDate = [dateFormat dateFromString:Nov13_SpringRegistration];
    
//    Dec Dates
    NSString *FinalWithdrawl = @"Dec 12, 2012", *readingDay = @"Dec 13, 2012", *finalExam_1 = @"Dec 14, 2012", *finalExam_2 = @"Dec 15, 2012", *finalExam_3 = @"Dec 16, 2012", *finalExam_4 = @"Dec 17, 2012", *finalExam_5 = @"Dec 18, 2012", *finalExam_6 = @"Dec 19, 2012", *finalExam_7 = @"Dec 20, 2012", *uniformFinals = @"Dec 21, 2012";
    
    NSDate *finalWithdrawlDate, *readingDayDate, *finalExam_1Date, *finalExam_2Date, *finalExam_3Date, *finalExam_4Date, *finalExam_5Date, *finalExam_6Date, *finalExam_7Date, *uniformFinalDate;
    
    finalWithdrawlDate = [dateFormat dateFromString:FinalWithdrawl];
    readingDayDate = [dateFormat dateFromString:readingDay];
    finalExam_1Date = [dateFormat dateFromString:finalExam_1];
    finalExam_2Date = [dateFormat dateFromString:finalExam_2];
    finalExam_3Date = [dateFormat dateFromString:finalExam_3];
    finalExam_4Date = [dateFormat dateFromString:finalExam_4];
    finalExam_5Date = [dateFormat dateFromString:finalExam_5];
    finalExam_6Date = [dateFormat dateFromString:finalExam_6];
    finalExam_7Date = [dateFormat dateFromString:finalExam_7];
    uniformFinalDate = [dateFormat dateFromString:uniformFinals];
    
    
//    current date
    NSString *nowDateString = [dateFormat stringFromDate:now];
    now = [dateFormat dateFromString:nowDateString];
    
    
//    check if is a holiday
    
    if ([jewsihHolidays_1_Date isEqualToDate:now] || [jewsihHolidays_2_Date isEqualToDate:now] || [Sept_25Date isEqualToDate:now] || [Sept_26Date isEqualToDate:now]) {
        alarmz.alertBody = @"No school today!";
        alarmz.repeatInterval = 0;
//        check to make sure the firedate works
        alarmz.fireDate = [NSDate date];
        [appz scheduleLocalNotification:alarmz];
    }
    
//    check for October dates
    else if ([Oct10 isEqualToDate:now])
    {
        alarmz.alertBody = @"Today follows a Monday schedule";
        alarmz.repeatInterval = 0;
        //        check to make sure the firedate works
        alarmz.fireDate = [NSDate date];
        [appz scheduleLocalNotification:alarmz];
    }
    
    else if ([Oct8 isEqualToDate:now])
    {
        alarmz.alertBody = @"No school today!";
        alarmz.repeatInterval = 0;
        //        check to make sure the firedate works
        alarmz.fireDate = [NSDate date];
        [appz scheduleLocalNotification:alarmz];
    }
    
//    Nov dates check
    else if ([LastWithdrawlDate isEqualToDate:now])
    {
        alarmz.alertBody = @"Last date to withdraw with W grade";
        alarmz.repeatInterval = 0;
        //        check to make sure the firedate works
        alarmz.fireDate = [NSDate date];
        [appz scheduleLocalNotification:alarmz];
    }
    
    else if ([SpringRegistrationDate isEqualToDate:now])
    {
        alarmz.alertBody = @"Spring 2013 registration begins";
        alarmz.repeatInterval = 0;
        //        check to make sure the firedate works
        alarmz.fireDate = [NSDate date];
        [appz scheduleLocalNotification:alarmz];
    }

    else if ([Nov22_ThanksgivingBreakDate isEqualToDate:now] || [Nov23_ThanksgivingBreakDate isEqualToDate:now] || [Nov24_ThanksgivingBreakDate isEqualToDate:now] || [Nov25_ThanksgivingBreakDate isEqualToDate:now])
    {
        alarmz.alertBody = @"Thanksgiving Break";
        alarmz.repeatInterval = 0;
        //        check to make sure the firedate works
        alarmz.fireDate = [NSDate date];
        [appz scheduleLocalNotification:alarmz];
    }
    
//    Dec dates check
    else if ([finalWithdrawlDate isEqualToDate:now])
    {
        alarmz.alertBody = @"Final date to wtihdraw with WF garde";
        alarmz.repeatInterval = 0;
        //        check to make sure the firedate works
        alarmz.fireDate = [NSDate date];
        [appz scheduleLocalNotification:alarmz];
    }
    
    else if ([readingDayDate isEqualToDate:now])
    {
        alarmz.alertBody = @"No school today! (Reading Day)";
        alarmz.repeatInterval = 0;
        //        check to make sure the firedate works
        alarmz.fireDate = [NSDate date];
        [appz scheduleLocalNotification:alarmz];
    }
    
    else if ([finalExam_1Date isEqualToDate:now] || [finalExam_2Date isEqualToDate:now] || [finalExam_3Date isEqualToDate:now] || [finalExam_4Date isEqualToDate:now] || [finalExam_5Date isEqualToDate:now] || [finalExam_6Date isEqualToDate:now] || [finalExam_7Date isEqualToDate:now] )
    {
        alarmz.alertBody = @"Final Examination Week";
        alarmz.repeatInterval = 0;
        //        check to make sure the firedate works
        alarmz.fireDate = [NSDate date];
        [appz scheduleLocalNotification:alarmz];
    }
    
    else if ([uniformFinalDate isEqualToDate:now])
    {
        alarmz.alertBody = @"Uniform Finals Today";
        alarmz.repeatInterval = 0;
        //        check to make sure the firedate works
        alarmz.fireDate = [NSDate date];
        [appz scheduleLocalNotification:alarmz];
    }
    
}




- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
  
    UILocalNotification *alarm = [[UILocalNotification alloc] init];
    NSDateFormatter *dateForm = [[NSDateFormatter alloc] init];
    [dateForm setDateStyle:NSDateFormatterShortStyle];
    [dateForm setTimeStyle:NSDateFormatterShortStyle];
    [dateForm setDateFormat:@"h:mm a"];
    NSString *datez = @"3:06 am";
    NSDate *goDate = [[NSDate alloc] init];
    goDate = [dateForm dateFromString:datez];
    
    
    
            
        alarm.fireDate = goDate;
        alarm.timeZone = [NSTimeZone defaultTimeZone];
        alarm.repeatInterval = 0;
        alarm.alertBody = @"This is a new test notification";
    
    NSLog(@"The used date is: %@", goDate);
//        [app scheduleLocalNotification:alarm];
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

-(void)PlayMusic
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"bgmusic" ofType:@"mp3"];
    NSURL *soundURL = [NSURL fileURLWithPath:path];
    AVAudioPlayer *bgMusic = [[AVAudioPlayer alloc] initWithContentsOfURL:soundURL error:NULL];
    bgMusic.numberOfLoops = -1; //Infinite loop
//    bgMusic.delegate = self;
    [bgMusic play];
}


#pragma mmark - Background image


@end
