//
//  ConInfo.m
//  MDF1-W3
//
//  Created by Jeff Mitsou on 8/20/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "StoreInfo.h"

@implementation StoreInfo

@synthesize aniName, actualLocation;

-(id)initWithTitle:(NSString*)name location:(CLLocationCoordinate2D)location
{
    if (self = [super init])
    {
        aniName = name;
        actualLocation = location;
    }
    return self;
}
@end
