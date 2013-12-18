//
//  customTCell.m
//  MDF1-W1
//
//  Created by Jeff Mitsou on 8/7/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "customTCell.h"

@implementation customTCell
@synthesize title;
@synthesize sRank;

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
