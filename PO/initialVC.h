//
//  initialVC.h
//  PO
//
//  Created by Jason on 8/5/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <AVFoundation/AVFoundation.h>




@interface initialVC : UIViewController 
{
    IBOutlet UIButton *calendarButton;
    
    
    IBOutlet UIButton *mapButton;
    
    
    UIImageView *imageView;
    UIImage *cloudImage;
    CALayer *cloud;
    CGPoint startPoint, endPoint;
    CABasicAnimation *animation;
    NSTimer *timer;
    AVAudioPlayer *audioPlayer;
//    audio player
    

}

-(void) playAudio;



@end
