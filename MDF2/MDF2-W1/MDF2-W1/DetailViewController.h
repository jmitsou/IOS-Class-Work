//
//  DetailViewController.h
//  MDF2-W1
//
//  Created by Jeff Mitsou on 10/4/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

{
    NSDictionary *twitterData;
    
    IBOutlet UITextView *tweetText;
    IBOutlet UILabel *userLabel;
    IBOutlet UILabel *dateLabel;
    IBOutlet UIImageView *userPic;
    NSString *userName;
    
}

@property (nonatomic, strong) NSDictionary *twitterData;
@property (nonatomic, strong) NSDictionary *twitterDictionary;



- (IBAction)onClose:(id)sender;

@end
