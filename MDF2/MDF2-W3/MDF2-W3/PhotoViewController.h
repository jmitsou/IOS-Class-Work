//
//  PhotoViewController.h
//  MDF2-W3
//
//  Created by Jeff Mitsou on 10/15/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoViewController : UIViewController <UINavigationControllerDelegate,UIImagePickerControllerDelegate>
{
    NSDictionary * camLib;
    IBOutlet UIImageView* original;
    IBOutlet UIImageView* edited;
    UIImage* begin;
    UIImage* end;
    NSMutableArray *images;
    int mode;
}

@property (nonatomic,strong) NSDictionary *camLib;

@end
