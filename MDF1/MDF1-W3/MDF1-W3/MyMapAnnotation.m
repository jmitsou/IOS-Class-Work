//
//  MyMapAnnotation.m
//  MDF1-W3
//
//  Created by Jeff Mitsou on 8/21/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "MyMapAnnotation.h"

@implementation MyMapAnnotation
@synthesize title, coordinate;

-(id)initWithTitle:(NSString*)text coord:(CLLocationCoordinate2D)coord
{
    if (self = [super init])
    {
        title = text;
        coordinate = coord;
    }
    return self;
}

@end
