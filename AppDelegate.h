//
//  AppDelegate.h
//  MapViewController
//
//  Created by Nattakarn Osborne on 7/17/15.
//  Copyright (c) 2015 Nan Osborne. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapViewController.h"
#import <GoogleMaps/GoogleMaps.h>


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) MapViewController *viewController;
@property (strong, nonatomic) UINavigationController *navigationController;


@end

