//
//  DetailViewController.m
//  MDF2-W1
//
//  Created by Jeff Mitsou on 10/4/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "DetailViewController.h"
#import "ViewController.h"
#import "ProfileViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize twitterData, twitterDictionary;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    NSString *tweet = [twitterData objectForKey:@"text"];
    
    NSString *date = [twitterData objectForKey:@"created_at"];
    
    userName = [twitterData objectForKey:@"screen_name"];
    
    tweetText.text = tweet;
    dateLabel.text = date;
    userLabel.text = [[twitterData objectForKey:@"user"] objectForKey:@"screen_name"];
    
    NSString *imageUrl = [[twitterData objectForKey:@"user"] objectForKey:@"profile_image_url"];
    
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:imageUrl]];
    
    if (data != nil)
    {
        //Set the image to be the users twitter image
        userPic.image = [UIImage imageWithData:data];
    }

    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onClose:(id)sender;
{
    //Dismiss the current view and return to the main view
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end