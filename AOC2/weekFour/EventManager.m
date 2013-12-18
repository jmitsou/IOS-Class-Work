//
//  EventManager.m
//  weekFour
//
//  Created by Jeff Mitsou on 8/1/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "EventManager.h"

@implementation EventManager

@synthesize emString;
@synthesize emDate;
@synthesize addNewEvent;

//Static pointer
static EventManager *_instance = nil;

//Static method
+(EventManager*)GetInstance
{
    //brings you back to caller
    return _instance;
}

//Give info on how to format date and strings
-(NSString*)stringEvent
{
    NSDateFormatter *formDate = [[NSDateFormatter alloc] init];
    if (formDate !=nil)
    {
        [formDate setDateStyle:NSDateFormatterLongStyle];
        [formDate setTimeStyle:NSDateFormatterLongStyle];
    }
    NSString *eString = [[NSString alloc] initWithFormat:@" \nEvent Name: %@ \nDate and Time: %@ \n",emString, [formDate stringFromDate:emDate]];
    return eString;
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
        addNewEvent = FALSE;
    }
    return self;
}

+(void)createInstance
{
    if (_instance == nil)
    {
        _instance = [[self alloc] init];
    }
}

@end
