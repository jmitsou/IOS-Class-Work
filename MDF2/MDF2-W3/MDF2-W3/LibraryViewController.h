//
//  LibraryViewController.h
//  MDF2-W3
//
//  Created by Jeff Mitsou on 10/15/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LibraryViewController : UIViewController <UINavigationControllerDelegate,UIImagePickerControllerDelegate>
{
    IBOutlet UIImageView *photoImage;
}

-(IBAction)onClick:(id)sender;
-(IBAction)onClose:(id)sender;


@end
