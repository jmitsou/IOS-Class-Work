//
//  conManager.m
//  MDF1-W3
//
//  Created by Jeff Mitsou on 8/20/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "businessManager.h"

@implementation businessManager
@synthesize aniStores;

static businessManager *_instance = nil;

+(void)CreateInstance
{
    if (_instance == nil)
    {
        _instance = [[self alloc] init];
    }
}

+(businessManager*)GetInstance
{
    return _instance;
}

+(id)alloc
{
    _instance = [super alloc];
    return _instance;
}

-(id)init
{
    if (self = [super init])
    {
        aniStores = [[NSMutableArray alloc]init];
    }
    return self;
}

@end
