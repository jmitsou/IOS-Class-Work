//
//  FollowerInfo.h
//  MDF2-W2
//
//  Created by Jeff Mitsou on 10/12/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FollowerInfo : NSObject
{
    NSString *userHandle;
    UIImage * avatar;
}

@property (nonatomic,strong) NSString *userHandle;
@property (nonatomic, strong)UIImage *avatar;

@end
