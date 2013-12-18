//
//  addEventView.m
//  weekThree
//
//  Created by Jeff Mitsou on 7/22/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "addEventView.h"
#import "ViewController.h"

@interface addEventView ()

@end

@implementation addEventView

@synthesize delegate;


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
    
    //makes sure user can not select date or time older then todays date and current time.
    picker.minimumDate = [NSDate date];
    date = picker.date;
}

- (void)viewWillAppear:(BOOL)animated
{
    
    [super viewWillAppear:animated];
}

//gathers date information from the picker and formats it
-(IBAction)onChange:(id)sender
{
    //sets date gathered to a variable
    date = picker.date;
    picker = (UIDatePicker*)sender;
    if (picker != nil)
    {
        //sets date to correct format. 
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
        [dateFormat setDateStyle:NSDateFormatterLongStyle];
        [dateFormat setTimeStyle:NSDateFormatterLongStyle];
        
        dateString = [dateFormat stringFromDate:date];
    }
    
}

//action for closing the keyboard
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button != nil)
    {
        //tells keyboard to close
        [textbox resignFirstResponder];
    }
    
}

//Save button action
-(IBAction)onSave:(id)sender
{
    if (delegate != nil) {
        //Checks to ensure there is text in the textfeild
        if (textbox.text.length>=1)
        {
            //string that holds
            tempString = textbox.text;
           //string that holds the text and date entered
            NSString *details = [NSString stringWithFormat:@"\n\nEvent: %@\nDate and Time: %@", tempString, dateString];
            newEvent = formattedDate;
            [delegate Save:details];
            
        }
    }
    // sends user back to first view
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


    

@end
