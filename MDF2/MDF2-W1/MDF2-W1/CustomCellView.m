//
//  CustomCellView.m
//  MDF2-W1
//
//  Created by Jeff Mitsou on 10/5/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "CustomCellView.h"

@interface CustomCellView ()

@end

@implementation CustomCellView
@synthesize tweetLabel, dateLabel, userImage;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
