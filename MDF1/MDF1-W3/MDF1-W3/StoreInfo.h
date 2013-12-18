//
//  ConInfo.h
//  MDF1-W3
//
//  Created by Jeff Mitsou on 8/20/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface StoreInfo : NSObject
{
    
}

-(id)initWithTitle:(NSString*)name location:(CLLocationCoordinate2D)location;

@property (nonatomic,strong)NSString * aniName;
@property (nonatomic,readonly) CLLocationCoordinate2D actualLocation;

@end
