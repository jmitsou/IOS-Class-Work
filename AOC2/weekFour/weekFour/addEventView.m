//
//  addEventView.m
//  weekThree
//
//  Created by Jeff Mitsou on 7/22/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "addEventView.h"
#import "EventManager.h"

@interface addEventView ()

@end

@implementation addEventView


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
    //makes sure user can not select date or time older then todays date and current time.
    [picker setMinimumDate: [NSDate date]];

    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

//gathers date information from the picker and formats it
-(IBAction)onChange:(id)sender
{
 
    if (picker != nil)
    {
        dateString = formattedDate;
    }
    
}

//action for closing the keyboard
-(IBAction)onClick:(id)sender
{
    //tells keyboard to close
    [textbox resignFirstResponder];
    
}

-(void)viewWillAppear:(BOOL)animated
{
    leftSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(leftSwipe:)];
    leftSwiper.direction = UISwipeGestureRecognizerDirectionLeft;
    [goBack addGestureRecognizer:leftSwiper];
    
    [super viewWillAppear:animated];
}


//Save button action
-(void)leftSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if ([textbox.text length] >0)
    {
        [[EventManager GetInstance] setEmDate:picker.date];
        [[EventManager GetInstance] setEmString:textbox.text];
        
        [[EventManager GetInstance] setAddNewEvent:TRUE];
        
        // sends user back to first view
        [self dismissViewControllerAnimated:true completion:nil];
    }else
    {
        UIAlertView *empty = [[UIAlertView alloc] initWithTitle:@"Empty Textfield" message:@"Please enter text" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        if (empty != nil)
        {
            [empty show];
        }
    }
}



@end
