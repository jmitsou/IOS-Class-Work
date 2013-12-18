//
//  NavViewTwo.m
//  MDF1-W2
//
//  Created by Jeff Mitsou on 8/15/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "NavViewTwo.h"
#import "NavViewThree.h"

@interface NavViewTwo ()

@end

@implementation NavViewTwo

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = NSLocalizedString(@"Consoles", @"Consoles");
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(IBAction)onClick:(id)sender
{
    NavViewThree * viewThree = [[NavViewThree alloc] initWithNibName:@"NavViewThree" bundle:nil];
    if (viewThree != nil)
    {
        [self.navigationController pushViewController:viewThree animated:TRUE];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
