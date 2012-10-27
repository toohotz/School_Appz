//
//  mopViewController.m
//  PO
//
//  Created by Jason on 7/17/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import "mopViewController.h"

@interface mopViewController ()

@end

@implementation mopViewController
@synthesize mapView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    mapView.showsUserLocation = YES;
    UIBarButtonItem *zoomButton = [[UIBarButtonItem alloc] initWithTitle:@"Zoom" style:UIBarButtonItemStylePlain target:self action:@selector(zoomIn:)];
    
    self.navigationItem.rightBarButtonItem = zoomButton;
    
    UIBarButtonItem *typeButton = [[UIBarButtonItem alloc] initWithTitle:@"Type" style:UIBarButtonItemStylePlain target:self action:@selector(changeMapType:)];
    
    self.navigationItem.leftBarButtonItem = typeButton;
    
    
    
//    school annotation
    
    CLLocationCoordinate2D NYCCTLocation;
    
    NYCCTLocation.latitude = 40.6955248;
    NYCCTLocation.longitude = -73.9871396;
    
    MKPointAnnotation *NYCCTPoint = [[MKPointAnnotation alloc] init];
    NYCCTPoint.coordinate = NYCCTLocation;
    NYCCTPoint.title = @"New York City College Of Technology";
    
    [mapView addAnnotation:NYCCTPoint];
    
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {

    mapView = nil;
    [super viewDidUnload];
}


#pragma mark - Selector functions

-(void)zoomIn: (id)sender
{
    MKUserLocation *userLocation = mapView.userLocation;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.location.coordinate, 50, 50);
    
    [mapView setRegion:region animated:NO];
}

-(void) changeMapType:(id) sender
{
    if (mapView.mapType == MKMapTypeStandard) {
        mapView.mapType = MKMapTypeHybrid;
    }
    else
    {
        mapView.mapType = MKMapTypeStandard;
    }
}

-(void)updateLocationManager:(CLLocationManager *)newLocationManager
{
    
}

@end
