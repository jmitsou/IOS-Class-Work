//
//  addEventView.h
//  weekThree
//
//  Created by Jeff Mitsou on 7/22/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>

//Delegate that takes the info passed back to ViewController text view.
@protocol addEventDelegate <NSObject>
@required
-(void)Save:(NSString*)nameEvent;

@end

@interface addEventView : UIViewController

{
    IBOutlet UITextField *textbox;
    IBOutlet UIButton *close;
    IBOutlet UIButton *Save;
    IBOutlet UIDatePicker *picker;
    
    //string for date
    NSDate *date;
    //string for textfield
    NSString *tempString;
    //string for date
    NSString *dateString;
    
    
    NSString *newEvent;
    NSString*formattedDate;
    
    id <addEventDelegate> delegate;
  
}

//function for save button and close keyboard
-(IBAction)onClick:(id)sender;

//action event for the date picker
-(IBAction)onChange:(id)sender;

//function for save action
-(IBAction)onSave:(id)sender;


@property (strong) id<addEventDelegate> delegate;
@end
