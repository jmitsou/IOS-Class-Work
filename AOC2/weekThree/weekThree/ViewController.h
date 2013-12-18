//
//  ViewController.h
//  weekThree
//
//  Created by Jeff Mitsou on 7/22/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "addEventView.h"

@interface ViewController : UIViewController <addEventDelegate>
{
    IBOutlet UITextView *textSpace;
    IBOutlet UIButton * addEvent;
    id<addEventDelegate> delegate;
}

@property(strong) id<addEventDelegate> delegate;
-(IBAction)addEventPage:(id)sender;

@end
