//
//  ProfileViewController.m
//  MDF2-W1
//
//  Created by Jeff Mitsou on 10/4/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController
@synthesize userImage, tweetDict;

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
    NSString *userName = [[tweetDict objectForKey:@"user"] objectForKey:@"screen_name"];
    
    if (userName != nil)
    {
        //Set the label text to the username
        usernameLabel.text = userName;
    }
    
    NSString *description = [[tweetDict objectForKey:@"user"] objectForKey:@"description"];
    
    if (description != nil)
    {
        //Set the textview text to the description
        descriptionView.text = description;
    }
    
    id followers = [[tweetDict objectForKey:@"user"] objectForKey:@"followers_count"];
    
    if (followers != nil)
    {
        //Set the followers
        followersLabel.text = [NSString stringWithFormat:@"%@", followers];
    }
    
    id following = [[tweetDict objectForKey:@"user"] objectForKey:@"friends_count"];
    
    if (following != nil)
    {
        //Set the number of following
        followingLabel.text = [NSString stringWithFormat:@"%@", following];
    }
    
    id numTweets = [[tweetDict objectForKey:@"user"] objectForKey:@"statuses_count"];
    
    if (numTweets != nil)
    {
        //Set the number of tweets
        tweetsLabel.text = [NSString stringWithFormat:@"%@", numTweets];
    }
    
    NSString *imageUrl = [[tweetDict objectForKey:@"user"] objectForKey:@"profile_image_url_https"];
    
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:imageUrl]];
    
    if (data != nil)
    {
        //Set the image to be the users twitter image
        imageView.image = [UIImage imageWithData:data];
    }
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onReturn:(id)sender
{
    UIButton *button = (UIButton *)sender;
    
    if (button != nil)
    {
        //Dismiss the current view and return to the main view
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}
@end
