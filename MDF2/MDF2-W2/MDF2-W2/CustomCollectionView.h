//
//  CustomCollectionView.h
//  MDF2-W2
//
//  Created by Jeff Mitsou on 10/9/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCollectionView : UICollectionViewCell
{
    IBOutlet UIImageView * userPic;
    IBOutlet UILabel * userLabel;
}

-(void)refreshCellData:(UIImage*)image titleString:(NSString*)titleString;

@property (nonatomic, strong) UIImageView *userPic;
@property (nonatomic, strong) UILabel *userLabel;

@end
