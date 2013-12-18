//
//  ViewController.m
//  weekThree
//
//  Created by Jeff Mitsou on 7/22/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "ViewController.h"
#import "addEventView.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize delegate;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//add event to the text view
-(void)Save:(NSString*)nameEvent
{
    NSString *eventString = nameEvent;
    
    if([textSpace.text isEqualToString:@""])
    {
        textSpace.text = nameEvent;
    }
    else
    {
        textSpace.text = [textSpace.text stringByAppendingString:eventString];
    }
}

//brings up second view
-(IBAction)addEventPage:(id)sender
{
    addEventView *addView = [[addEventView alloc]initWithNibName:@"addEventView" bundle:nil];
    if (addView != nil)
    {
        [addView setDelegate:self];
        
        //switches pages
        [self presentViewController:addView animated:true completion:nil];
    }
    
}


@end
