//
//  mopViewController.h
//  PO
//
//  Created by Jason on 7/17/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface mopViewController : UIViewController <CLLocationManagerDelegate>
{
    IBOutlet MKMapView *mapView;
    
}

@property(nonatomic) MKMapView *mapView;


-(void)updateLocationManager:(CLLocationManager*) newLocationManager;

  

@end
