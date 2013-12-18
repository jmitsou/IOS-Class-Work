//
//  DetailViewController.h
//  MDF1-W2
//
//  Created by Jeff Mitsou on 8/14/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{
    
}

//info for the labels on the detail view
@property IBOutlet UILabel * titleLabel;
@property IBOutlet UITextView * infoLabel;
@property IBOutlet UITextView * urlLabel;

-(IBAction)onClick:(id)sender;
@end
