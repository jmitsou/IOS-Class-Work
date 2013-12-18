//
//  DetailViewViewController.m
//  MDF2-W2
//
//  Created by Jeff Mitsou on 10/12/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "DetailViewViewController.h"
#import "FollowerInfo.h"
#import "ViewController.h"

@interface DetailViewViewController ()

@end

@implementation DetailViewViewController

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
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    image2.image = self.follower.avatar;
    name.text = self.follower.userHandle;
    
    [super viewDidAppear:YES];
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
