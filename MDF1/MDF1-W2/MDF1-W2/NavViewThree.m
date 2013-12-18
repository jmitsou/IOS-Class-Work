//
//  NavViewThree.m
//  MDF1-W2
//
//  Created by Jeff Mitsou on 8/15/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "NavViewThree.h"

@interface NavViewThree ()

@end

@implementation NavViewThree

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = NSLocalizedString(@"Games", @"Games");
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
