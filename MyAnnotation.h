//
//  MyAnnotation.h
//  MapViewController
//
//  Created by Nattakarn Osborne on 7/17/15.
//  Copyright (c) 2015 Nan Osborne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <UIKit/UIKit.h>


@interface MyAnnotation : NSObject <MKAnnotation>

@property  (nonatomic) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;
@property (nonatomic, copy) NSURL *url;


@property (strong, nonatomic) UIImageView *image;

//@property (nonatomic) BOOL canShowCallout;





@end
