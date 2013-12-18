//
//  ViewController.h
//  weekFour
//
//  Created by Jeff Mitsou on 7/30/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "addEventView.h"

@interface ViewController : UIViewController
{
    IBOutlet UITextView *textSpace;
    IBOutlet UILabel * addEvent;
    IBOutlet UIButton * clear;
    
    UISwipeGestureRecognizer *rightSwiper;
    NSUserDefaults * originals;
    
}

-(IBAction)clearEvents:(id)sender;
-(IBAction)onSave:(id)sender;

@end
