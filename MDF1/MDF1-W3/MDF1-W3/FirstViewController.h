//
//  FirstViewController.h
//  MDF1-W3
//
//  Created by Jeff Mitsou on 8/20/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView * aniList;
    IBOutlet UIButton * deleteBtn;
    IBOutlet UIButton * doneBtn;

}
-(IBAction)onClick:(id)sender;

@end
