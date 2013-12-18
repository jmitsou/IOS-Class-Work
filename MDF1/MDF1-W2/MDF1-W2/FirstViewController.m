//
//  FirstViewController.m
//  MDF1-W2
//
//  Created by Jeff Mitsou on 8/14/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "FirstViewController.h"
#import "NavViewTwo.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //sets title for the first tab and navbar title
        self.title = NSLocalizedString(@"Video Games", @"Video Games");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    //changes color of nar bar on first view
    self.navigationController.navigationBar.tintColor = [UIColor lightGrayColor];
    
    //changes the color of the navbar buttons
    [[UIBarButtonItem appearance] setTintColor:[UIColor redColor]];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


-(IBAction)onClick:(id)sender
{
    //transitions from first view to first child view
    NavViewTwo * viewTwo = [[NavViewTwo alloc] initWithNibName:@"NavViewTwo" bundle:nil];
    if (viewTwo != nil)
    {
        [self.navigationController pushViewController:viewTwo animated:TRUE];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
