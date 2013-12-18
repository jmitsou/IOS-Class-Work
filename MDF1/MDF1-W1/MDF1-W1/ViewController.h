//
//  ViewController.h
//  MDF1-W1
//
//  Created by Jeff Mitsou on 8/7/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "detailViewController.h"
#import "customTCell.h"
#import "animeDetails.h"

@interface ViewController : UIViewController <UITableViewDelegate>
{
    //table view
    IBOutlet UITableView * tView;
    //edit button
    IBOutlet UIBarButtonItem * edit;
    
    NSString *rowValue;
    
    //info arrays
    NSMutableArray * titleArray;
    NSMutableArray * rank;
    NSMutableArray * currentChap;
    NSMutableArray * plot;
    
    NSMutableArray * aniDetails;
    
}

//function for edit and done button
-(IBAction)onClick:(id)sender;

@end
