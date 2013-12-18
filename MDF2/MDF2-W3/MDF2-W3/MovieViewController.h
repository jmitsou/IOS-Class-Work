//
//  MovieViewController.h
//  MDF2-W3
//
//  Created by Jeff Mitsou on 10/16/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieViewController : UIViewController <UINavigationControllerDelegate,UIImagePickerControllerDelegate>
{
    IBOutlet UIButton* saveM;
    IBOutlet UIButton* cancelM;
    
    NSString* videoPath;
    
}

@property (nonatomic,strong) NSDictionary *camLib;

@end
