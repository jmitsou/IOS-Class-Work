//
//  aboutMe.m
//  MDF1-W2
//
//  Created by Jeff Mitsou on 8/15/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "aboutMe.h"

@implementation aboutMe
@synthesize details;

-(id)initWithDetails:(NSString *)devDetails
{
    self = [super init];
    if(self != nil)
    {
        details = devDetails;
    }
    return self;
}
@end
