//
//  aboutMe.h
//  MDF1-W2
//
//  Created by Jeff Mitsou on 8/15/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface aboutMe : NSObject
{
    NSString *details;
}
-(id)initWithDetails:(NSString *)devDetails;

@property (nonatomic, readonly)NSString *details;

@end
