//
//  SecondViewController.h
//  MDF1-W2
//
//  Created by Jeff Mitsou on 8/14/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    //table view connector
    IBOutlet UITableView * listView;
    
    //Array for tableview entries
    NSMutableArray *titles;
    NSMutableArray *Info;
    NSMutableArray *Urls;
    
}

@end
