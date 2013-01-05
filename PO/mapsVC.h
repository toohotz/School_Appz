//
//  mapsVC.h
//  PO
//
//  Created by Jason on 6/24/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>


@interface mapsVC : UIViewController <CLLocationManagerDelegate, MKAnnotation, MKMapViewDelegate>
{
    CLLocationManager *locationManager;
    CLLocation *location;
    CLRegion *NYCCT;
    CLGeocoder *geocoder;
    IBOutlet MKMapView *mapView;
    NSString *address;
    
    UIDevice *device;
    NSString *deviceType;
    __weak id delegate;

    
    
}

@property(nonatomic, getter = isZoomEnabled) BOOL zoomEnabled;
@property(nonatomic) BOOL showUserLocation;
@property (nonatomic,strong) CLLocationManager *locationManager;

@property(nonatomic) IBOutlet MKMapView *mapView;
@property (nonatomic,strong) CLLocation *location;
@property (nonatomic,weak) id delegate;









@end
