//
//  AppDelegate.h
//  MDF1-W4
//
//  Created by Jeff Mitsou on 8/26/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;

@property (strong, nonatomic) NSString * rawXData;

@property (strong, nonatomic) NSString * mTitle;

@property (strong, nonatomic) NSString * mRating;

@end
