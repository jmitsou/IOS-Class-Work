//
//  CustomCellView.h
//  MDF2-W1
//
//  Created by Jeff Mitsou on 10/5/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCellView : UITableViewCell
{
    IBOutlet UIImageView *userImage;
    IBOutlet UILabel *tweetLabel;
    IBOutlet UILabel *dateLabel;
}

@property (nonatomic, strong) UIImageView *userImage;
@property (nonatomic, strong) UILabel *tweetLabel;
@property (nonatomic, strong) UILabel *dateLabel;

@end
