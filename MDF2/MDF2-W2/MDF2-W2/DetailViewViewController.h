//
//  DetailViewViewController.h
//  MDF2-W2
//
//  Created by Jeff Mitsou on 10/12/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FollowerInfo.h"

@interface DetailViewViewController : UIViewController
{
    IBOutlet UIImageView* image2;
    IBOutlet UILabel *name;
    
}

- (IBAction)onClose:(id)sender;

@property (nonatomic, strong) FollowerInfo *follower;

@end
