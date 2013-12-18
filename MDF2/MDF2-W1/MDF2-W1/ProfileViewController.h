//
//  ProfileViewController.h
//  MDF2-W1
//
//  Created by Jeff Mitsou on 10/4/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileViewController : UIViewController

{
    IBOutlet UILabel *usernameLabel;
    IBOutlet UITextView *descriptionView;
    IBOutlet UILabel *followersLabel;
    IBOutlet UILabel *followingLabel;
    IBOutlet UILabel *tweetsLabel;
    IBOutlet UIImageView *imageView;
    
    NSDictionary *tweetDict;
    UIImage *userImage;
}

@property (nonatomic, strong) NSDictionary *tweetDict;
@property (nonatomic, strong) UIImage *userImage;

-(IBAction)onReturn:(id)sender;



@end
