//
//  ThirdViewController.m
//  MDF1-W2
//
//  Created by Jeff Mitsou on 8/14/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "ThirdViewController.h"
#import "aboutMe.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        //sets title for the third tab and navbar title
        self.title = NSLocalizedString(@"About Me", @"About Me");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}

- (void)viewDidLoad
{
    //create mutable array for details
    details = [[NSMutableArray alloc] init];
    //create instance of aboutClass
    aboutMe *developDetails = [[aboutMe alloc] initWithDetails:@"My Name is Jeff Mitsou. I have been gaming for as long as I can remember. I have and always be a Nintendo fan when it comes to games. In the last few years I have sided with Sony and purchased a Playstation 3. While I am not a fan of Microsofts Xbox 360 I aknowledge them for their line up of games. I spend most of my time enjoying role playing games (RPGs) and first person shooters. When on the road I have I 3DS to keep me company."];
    //add details to array
    [details addObject:developDetails];
    //pass data to view
    infoLabel.text = developDetails.details;
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
