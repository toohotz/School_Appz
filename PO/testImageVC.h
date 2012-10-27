//
//  testImageVC.h
//  PO
//
//  Created by Kemar White on 6/13/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <dispatch/dispatch.h>


@interface testImageVC : UIViewController <NSURLConnectionDelegate>
{
    
    
    IBOutlet UIImageView *imageView;
    
    IBOutlet UITextField *nameField;
    
    
    IBOutlet UILabel *welcomeLabel;
    
    dispatch_queue_t backgroundQueue;

    
    NSURL *imageUrl;
    NSData *urlData;
    UIImage *image;
    NSURLRequest *request;
    NSURLConnection *download;
    NSString *path, *imageName;
    NSFileHandle *file;
    NSMutableData *results;
    
    
}


-(void)initializeVars;

- (IBAction)closeKB:(id)sender;

- (IBAction)getIm:(id)sender;







@end
