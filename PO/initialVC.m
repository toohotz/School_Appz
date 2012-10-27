//
//  initialVC.m
//  PO
//
//  Created by Jason on 8/5/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import "initialVC.h"
#import "Device_Resolutions.h"


NSString * const TEST_NOTIF =  @"Test notification Complete.";


@interface initialVC ()


-(void)fadingAnimation:(CALayer*) fadingLayer;



@end

@implementation initialVC




- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization

    }
    return self;
}
#pragma mark - Background Fading in Transition

+ (void)fadeInLayer:(CALayer *)l
{
    CABasicAnimation *fadeInAnimate   = [CABasicAnimation animationWithKeyPath:@"opacity"];
    fadeInAnimate.duration            = 0.5;
    fadeInAnimate.repeatCount         = 1;
    fadeInAnimate.autoreverses        = NO;
    fadeInAnimate.fromValue           = [NSNumber numberWithFloat:0.0];
    fadeInAnimate.toValue             = [NSNumber numberWithFloat:1.0];
    fadeInAnimate.removedOnCompletion = YES;
 
    [l addAnimation:fadeInAnimate forKey:@"animateOpacity"];
    return;
}



#pragma mark - Fade in animation (working)
-(void) fadingTester
{
    [UIView beginAnimations:nil context:NULL];
    
    self.view.alpha = 0.0f;
    [UIView setAnimationDuration:3.0f];
//    [[self view] setFrame:CGRectMake(45.0f, 45.0f, 100.0f, 100.0f)];
    
    self.view.alpha = 1.0f;


    [UIView commitAnimations];

}
#pragma mark -

-(void) fadingAnimation
{

   
    if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone){
        if ([UIScreen mainScreen].scale == 2.0f) {
            CGSize result = [[UIScreen mainScreen] bounds].size;
            CGFloat scale = [UIScreen mainScreen].scale;
            result = CGSizeMake(result.width * scale, result.height * scale);
            
            if(result.height == 960){
                
                //                iPhone 4/4S
                
                UIImageView *bgImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"loginpic@2x.png"]];
                bgImage.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
                
                [[self view] addSubview:bgImage];
                [[self view] sendSubviewToBack:bgImage];
                /*
                UIColor *background = [[UIColor alloc] initWithPatternImage:bgImage.image];
                self.view.backgroundColor = background;
                */
                [UIView beginAnimations:nil context:NULL];
                self.view.alpha = 0.0f;
                [UIView setAnimationDuration:3.0f];
                self.view.alpha = 1.0f;
                [[self view] setFrame:CGRectMake(45.0f, 45.0f, 100.0f, 100.0f)];
                [UIView commitAnimations];

            }
            if(result.height == 1136){
                
                //                iPhone 5
                
                UIImageView *bgImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"loginpic-568@2x.png"]];
                bgImage.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
                
                [[self view] addSubview:bgImage];
                [[self view] sendSubviewToBack:bgImage];
               
                [UIView beginAnimations:nil context:NULL];
                self.view.alpha = 0.0f;
                [UIView setAnimationDuration:3.0f];
                self.view.alpha = 1.0f;
                [[self view] setFrame:CGRectMake(45.0f, 45.0f, 100.0f, 100.0f)];
                [UIView commitAnimations];

                
            }
        } else {
            
            //            non Retina iPhone
            UIImageView *bgImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"loginpic.png"]];
            bgImage.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
            
            [[self view] addSubview:bgImage];
            [[self view] sendSubviewToBack:bgImage];
            
            [UIView beginAnimations:nil context:NULL];
            self.view.alpha = 0.0f;
            [UIView setAnimationDuration:3.0f];
            self.view.alpha = 1.0f;
            [[self view] setFrame:CGRectMake(45.0f, 45.0f, 100.0f, 100.0f)];
            [UIView commitAnimations];

        }
    } else {
        if ([UIScreen mainScreen].scale == 2.0f) {
            
            //            iPad Retina
            
            
        } else{
            // iPad non Retina
            
        }
    }
    
    /*
    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"loginpic.png"]];
    self.view.backgroundColor = background;
    [UIView beginAnimations:nil context:NULL];
    self.view.alpha = 0.0f;
    [UIView setAnimationDuration:3.0f];
    self.view.alpha = 1.0f;
    [[self view] setFrame:CGRectMake(45.0f, 45.0f, 100.0f, 100.0f)];
    [UIView commitAnimations];
*/
}



-(void) timerTestMethod:(NSTimer*) theTimer
{
    UIImageView *backgroundImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Default_100.png"]];
    self.view.backgroundColor = [UIColor colorWithPatternImage:backgroundImageView.image];
    


    
}

-(void) backGroundFadesIn
{
 
     dispatch_queue_t backgroundFadesInQueue = dispatch_queue_create("com.PO.backgroundFadesInQueue", NULL);
//    backgroundFadesInQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
   dispatch_async(backgroundFadesInQueue, ^{
       
       @autoreleasepool {
           imageView = [[UIImageView alloc] initWithFrame:self.view.frame];
           imageView.animationImages = [NSArray arrayWithObjects:
                                        [UIImage imageNamed:@"Default_1.png"],
                                        [UIImage imageNamed:@"Default_2.png"],
                                        [UIImage imageNamed:@"Default_3.png"],
                                        [UIImage imageNamed:@"Default_4.png"],
                                        [UIImage imageNamed:@"Default_5.png"],
                                        [UIImage imageNamed:@"Default_6.png"],
                                        [UIImage imageNamed:@"Default_7.png"],
                                        [UIImage imageNamed:@"Default_8.png"],
                                        [UIImage imageNamed:@"Default_9.png"],
                                        [UIImage imageNamed:@"Default_100.png"], nil];
           
           
           
           dispatch_async(dispatch_get_main_queue(), ^{

               imageView.animationDuration = 2.6;
               imageView.animationRepeatCount = 1;
               [imageView startAnimating];
               
               [self.view addSubview:imageView];
           });
       }
       
   });
//    dispatch_release(backgroundFadesInQueue);
    
    timer = [NSTimer scheduledTimerWithTimeInterval:2.7 target:self selector:@selector(timerTestMethod:) userInfo:nil repeats:NO];
    

}




#pragma mark - View loading
- (void)viewDidLoad
{
    [super viewDidLoad];

    [self fadingAnimation];

    
//    [self playAudio];

    


        CALayer *cloudLayer;
    
    
    cloudLayer.contents = (id) imageView.image.CGImage;
//    cloudLayer.backgroundColor = (__bridge CGColorRef)([UIColor blueColor]);
//    [initialVC fadeInLayer:cloudLayer];



    
    self.title = @"My CUNY";
    
    self.navigationController.navigationBarHidden = YES;
    
    
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveTestNotification:) name:TEST_NOTIF object:nil];
    
    
}

- (void) receiveTestNotification:(NSNotification *) notification
{
    NSLog(@"Notification received");
    
}



#pragma mark - Cloud animation


-(void)cloudAnimation
{
    

    


        
        //    Cloud setup
        
        
        cloudImage = [UIImage imageNamed:@"cloud.png"];
        cloud = [CALayer layer];
        cloud.contents = (id)cloudImage.CGImage;
        cloud.bounds = CGRectMake(0,0,cloudImage.size.width, cloudImage.size.height);
        cloud.position = CGPointMake(self.view.bounds.size.width / 2, cloudImage.size.height / 2);
        
        
        
        //    cloud animation
        
        startPoint = CGPointMake(self.view.bounds.size.width + cloud.bounds.size.width / 2, cloud.position.y);
        endPoint = CGPointMake(cloud.bounds.size.width / -2, cloud.position.y);
        
        animation = [CABasicAnimation animationWithKeyPath:@"position"];
        animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
        animation.fromValue = [NSValue valueWithCGPoint:startPoint];
        animation.toValue = [NSValue valueWithCGPoint:endPoint];
        animation.repeatCount = HUGE_VALF;
        animation.duration = 6.0;
    

   
        [self.view.layer addSublayer:cloud];
        [cloud addAnimation:animation forKey:@"position"];
    
    

}


#pragma mark - View loading

-(void) viewWillAppear:(BOOL)animated
{

    
    
    
    self.navigationController.navigationBarHidden = YES;
    [self cloudAnimation];
    [self.view setNeedsDisplay];
    [self.view setNeedsLayout];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void) viewDidDisappear:(BOOL)animated
{
    cloud = nil;
    cloudImage = nil;
    timer = nil;

    [cloud removeFromSuperlayer];
    [self.view.layer removeAllAnimations];
    

    
}


-(void) dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


- (void)viewDidUnload {
    calendarButton = nil;
    mapButton = nil;
    timer = nil;
    audioPlayer = nil;
    [super viewDidUnload];
}

#pragma mark - Background Audio
-(void) playAudio
{
    
    @autoreleasepool {
        NSURL *audioFileURL = [[NSBundle mainBundle] URLForResource:@"intro_sound" withExtension:@"mp3"];
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:audioFileURL error:NULL];
        [audioPlayer setNumberOfLoops:0];
        [audioPlayer play];
    }



}

#pragma mark - Test notification center

-(void) receivedTestNotif:(NSNotification*) notification
{
    
}



@end
