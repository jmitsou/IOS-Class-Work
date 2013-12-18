//
//  EventManager.h
//  weekFour
//
//  Created by Jeff Mitsou on 8/1/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EventManager : NSObject

//String for the event data
@property(nonatomic, strong) NSString *emString;

//String for the date
@property(nonatomic, strong) NSDate * emDate;

//Creates a new event instance
@property BOOL addNewEvent;

//Static Method
+(EventManager*)GetInstance;

//Instance method
+(void)createInstance;

//Makes String
-(NSString*)stringEvent;


@end
