//
//  POAppDelegate.h
//  PO
//
//  Created by Kemar White on 7/23/11.
//  Copyright 2011 J & J Corp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@class initialVC;



@interface POAppDelegate : UIResponder <UIApplicationDelegate, AVAudioPlayerDelegate, UITabBarDelegate>


{
    UITabBarController *tabBarController;
}
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITabBarController *tabController;




@end
