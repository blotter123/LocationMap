//
//  BTLViewController.m
//  MapLocation
//
//  Created by Benedikt Lotter on 2/16/13.
//  Copyright (c) 2013 Benedikt Lotter. All rights reserved.
//

#import "BTLViewController.h"
#import "BTLAppDelegate.h"
//#import "BTLCLLocationManagerDelegate.h"


@interface BTLViewController ()

//@property (strong, nonatomic) BTLCLLocationManagerDelegate *sharedLocationManager;

@end

@implementation BTLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //BTLCLLocationManagerDelegate* sharedLocationManager = [BTLCLLocationManagerDelegate sharedLocationManager];
    //self.locationManager = [[CLLocationManager alloc] init];
    [BTLCLLocationManagerDelegate sharedLocationManager].delegate = self;
    //sharedLocationManager.delegate = self;
    //[sharedLocationManager startMonitoringSignificantLocationChanges];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - CLLocationManagerDelegate methods

//delegate method that gets called by the singelton class BTLCLLocationManagerDelegate once a location update is detected
- (void)locationUpdate:(CLLocation *)location
{
    NSLog(@"locationUpdate gets called");
    NSLog(@"lat: %f, lon:%f", location.coordinate.latitude, location.coordinate.longitude);
    [self addPinToMapAtLocation:location];
    
}

/*
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation *location = [locations lastObject];
    NSLog(@"lat: %f, lon:%f", location.coordinate.latitude, location.coordinate.longitude);
    [self addPinToMapAtLocation:location];
    
}
*/


// method to draw pins to the map based on the location passed down from the shared location manager
- (void)addPinToMapAtLocation:(CLLocation *)location
{
    MKPointAnnotation *pin = [[MKPointAnnotation alloc] init];
    pin.coordinate = location.coordinate;
    pin.title = @"foo";
    pin.subtitle = @"bar";
    [self.mapView addAnnotation:pin];
    MKCoordinateRegion region = { { 0.0f, 0.0f }, { 0.0f, 0.0f } };
    region.center = location.coordinate;
    region.span.longitudeDelta = 0.15f;
    region.span.latitudeDelta = 0.15f;
    [self.mapView setRegion:region animated:YES];
}


@end

