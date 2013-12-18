//
//  conManager.h
//  MDF1-W3
//
//  Created by Jeff Mitsou on 8/20/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface businessManager : NSObject
{
    NSMutableArray * aniStores;
    
    NSInteger *aniLat;
    NSInteger *aniLong;
}

+(void)CreateInstance;
+(businessManager*)GetInstance;

@property (nonatomic,strong)NSMutableArray *aniStores;

@end
