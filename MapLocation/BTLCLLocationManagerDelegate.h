//
//  BTLCLLocationManagerDelegate.h
//  MapLocation
//
//  Created by Benedikt Lotter on 2/16/13.
//  Copyright (c) 2013 Benedikt Lotter. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
//#import "BTLViewController.h"


@protocol LocationControllerDelegate
@required
- (void)locationUpdate:(CLLocation*)location;
@end

@interface BTLCLLocationManagerDelegate : NSObject <CLLocationManagerDelegate> 
{
  CLLocationManager* locationManager;
  CLLocation* location;
  __weak id delegate;

}


@property (nonatomic, strong) CLLocationManager* locationManager;
@property (nonatomic, strong) CLLocation* location;
@property (nonatomic, weak) id  delegate;

//+ (CLLocationManager *) sharedLocationManager;

+ (BTLCLLocationManagerDelegate *) sharedLocationManager;

@end
