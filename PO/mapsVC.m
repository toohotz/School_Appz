//
//  mapsVC.m
//  PO
//
//  Created by Jason on 6/24/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import "mapsVC.h"

@interface mapsVC ()

@end

@implementation mapsVC

@synthesize zoomEnabled = _zoomEnabled, showUserLocation = _showUserLocation;
@synthesize locationManager, mapView, location, delegate;




- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
     
        
    }
    

    return self;
}





#pragma mark - View Loading
- (void)viewDidLoad
{
    
    
    
    
//    check device for iPhone or iPod
    
    deviceType = [UIDevice currentDevice].model;
    
    if ([deviceType isEqualToString:@"iPhone"]) {
        
        return;
    }
    
    else if ([deviceType isEqualToString:@"iPod touch"])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Caution!" message:@"Make sure you are connected to the Internet for maps to work correctly" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil];
        [alert show];
    }
    
    
    

	


    device = [UIDevice currentDevice];
    
//    geocoding
    geocoder = [[CLGeocoder alloc] init];
    address = @"300 Jay Street, Brooklyn";

    
    


      [super viewDidLoad];
    
    
    
    mapView = [[MKMapView alloc] initWithFrame:self.view.bounds];
    CLLocationCoordinate2D coord = {.latitude =  61.2180556, .longitude =  -149.9002778};
    MKCoordinateSpan span;
    span.latitudeDelta = 0.2;
    span.longitudeDelta = 0.2;
    
    MKCoordinateRegion viewRegion = {coord, span};
    
    mapView.region = [mapView regionThatFits:viewRegion];
}

-(void) createAnnotations
{
    
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


#pragma mark - Location

-(void) locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    /*      */
}





/*
-(MKAnnotationView*) mapView:(MKMapView*) mapViews viewForAnnotation:(id<MKAnnotation>)annotation
{
    if ([annotation isKindOfClass:[MKUserLocation class]]) {
        return nil;
    }
    
    static NSString *AnnotationViewID = @"annotationViewID";
    MKAnnotationView *annonView = (MKAnnotationView*)[mapViews dequeueReusableAnnotationViewWithIdentifier:AnnotationViewID];
    
    if (annonView == nil) {
        annonView = [[MKAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:AnnotationViewID];
    }
    
    if ([[annotation title] isEqualToString:NSLocalizedString(@"Current Location", @"")]) {
        MKPinAnnotationView *pin = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:AnnotationViewID];
        annonView = pin;
    }
    
    
    
    
    
    return annonView;
}
*/




- (void)viewDidUnload {
//    mapView = nil;
    [super viewDidUnload];
}
@end
