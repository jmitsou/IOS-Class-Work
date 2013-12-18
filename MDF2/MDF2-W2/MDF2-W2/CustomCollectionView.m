//
//  CustomCollectionView.m
//  MDF2-W2
//
//  Created by Jeff Mitsou on 10/9/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "CustomCollectionView.h"

@implementation CustomCollectionView
@synthesize userPic, userLabel;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(void)refreshCellData:(UIImage*)image titleString:(NSString*)titleString
{
    userPic.image = image;
    userLabel.text = titleString;
}

@end
