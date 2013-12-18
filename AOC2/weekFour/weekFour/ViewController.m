//
//  ViewController.m
//  weekFour
//
//  Created by Jeff Mitsou on 7/30/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "ViewController.h"
#import "addEventView.h"
#import "EventManager.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [EventManager createInstance];
    
    originals = [NSUserDefaults standardUserDefaults];
    
    if ([originals objectForKey:@"newData"] != nil)
    {
        textSpace.text = [originals objectForKey:@"newData"];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    if ([[EventManager GetInstance] addNewEvent] == TRUE)
    {
        NSMutableString *data = [[NSMutableString alloc] initWithString:textSpace.text];
        [data appendString:[[EventManager GetInstance]stringEvent]];
        textSpace.text = data;
        [[EventManager GetInstance]setAddNewEvent:FALSE];
    }
    
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(rightSwipe:)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    [addEvent addGestureRecognizer:rightSwiper];
    
    [super viewWillAppear:animated];
}


-(void)rightSwipe:(UISwipeGestureRecognizer*)recognizer
{
    addEventView *addView = [[addEventView alloc]initWithNibName:@"addEventView" bundle:nil];
    if (addView != nil)
    {
        //switches pages
        [self presentViewController:addView animated:TRUE completion:nil];
    }
    
}

-(IBAction)clearEvents:(id)sender
{
    if (textSpace != nil) {
        textSpace.text = @"All Events go here...";
    }
    
}

-(IBAction)onSave:(id)sender
{
    NSString *newData = [[NSString alloc] initWithString:textSpace.text];
    [originals setObject:newData forKey:@"newData"];
    
}


@end
