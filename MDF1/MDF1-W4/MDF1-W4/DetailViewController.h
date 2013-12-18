//
//  DetailViewController.h
//  MDF1-W4
//
//  Created by Jeff Mitsou on 8/26/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UITextViewDelegate>
{
    IBOutlet UITextView *detailView;
    

    NSString *animeName;
    NSString *rating;
}

-(IBAction)onClick:(id)sender;
@end

