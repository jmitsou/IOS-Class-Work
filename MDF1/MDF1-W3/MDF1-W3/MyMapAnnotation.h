//
//  MyMapAnnotation.h
//  MDF1-W3
//
//  Created by Jeff Mitsou on 8/21/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MyMapAnnotation : NSObject <MKAnnotation>
{
    NSString *title;
    CLLocationCoordinate2D coordinate;
}

-(id)initWithTitle:(NSString*)text coord:(CLLocationCoordinate2D)coord;

@property (nonatomic ,copy) NSString *title;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

@end
