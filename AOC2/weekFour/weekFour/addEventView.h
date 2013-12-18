//
//  addEventView.h
//  weekThree
//
//  Created by Jeff Mitsou on 7/22/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface addEventView : UIViewController

{
    IBOutlet UIButton *closeKey;
    IBOutlet UILabel *goBack;
    IBOutlet UITextField *textbox;
    IBOutlet UIDatePicker *picker;
    
    //string for date
    
    
    //string for textfield
    NSString *textString;
    //string for date
    NSString *dateString;
    NSString*formattedDate;
    
    UISwipeGestureRecognizer *leftSwiper;
  
}
-(void)leftSwipe:(UISwipeGestureRecognizer*)recognizer;

//function for save button and close keyboard
-(IBAction)onClick:(id)sender;

//action event for the date picker
-(IBAction)onChange:(id)sender;

@end
