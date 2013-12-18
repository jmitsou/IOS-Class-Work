//
//  detailViewController.m
//  MDF1-W1
//
//  Created by Jeff Mitsou on 8/8/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "detailViewController.h"

@interface detailViewController ()

@end

@implementation detailViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// action used when clicking on the close button to go back to main view
-(IBAction)onClose:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if(button.tag == 0)
    {
        //switched back to main view
        [self dismissViewControllerAnimated:true completion:nil];
    }
    
}



@end
