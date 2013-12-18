//
//  ViewController.h
//  MDF2-W3
//
//  Created by Jeff Mitsou on 10/14/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UINavigationControllerDelegate,UIImagePickerControllerDelegate>
{
    UIImageView *photoImageView;
    int mode;
}

@property (nonatomic,strong) NSDictionary *camLib;

-(IBAction)onCapture:(id)sender;
-(IBAction)onRecord:(id)sender;

@end
