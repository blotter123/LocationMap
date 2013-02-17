//
//  BTLAppDelegate.h
//  MapLocation
//
//  Created by Benedikt Lotter on 2/16/13.
//  Copyright (c) 2013 Benedikt Lotter. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BTLCLLocationManagerDelegate.h"

@interface BTLAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) BTLCLLocationManagerDelegate *sharedLocationManager;

@end
