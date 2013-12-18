//
//  detailViewController.h
//  MDF1-W1
//
//  Created by Jeff Mitsou on 8/8/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface detailViewController : UIViewController
{
    IBOutlet UIButton * back;
}

-(IBAction)onClose:(id)sender;

//properties for the detail view info
@property IBOutlet UILabel * mtitle;
@property IBOutlet UILabel *chap;
@property IBOutlet UITextView *plotSum;

@end
