//
//  BTLViewController.h
//  MapLocation
//
//  Created by Benedikt Lotter on 2/16/13.
//  Copyright (c) 2013 Benedikt Lotter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "BTLCLLocationManagerDelegate.h"


@interface BTLViewController : UIViewController <LocationControllerDelegate> //<CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
//@property (strong, nonatomic) BTLCLLocationManagerDelegate *sharedLocationManager;

@end
