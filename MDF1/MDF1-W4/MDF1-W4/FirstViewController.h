//
//  FirstViewController.h
//  MDF1-W4
//
//  Created by Jeff Mitsou on 8/26/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
#import "AppDelegate.h"


@interface FirstViewController : UIViewController <NSURLConnectionDataDelegate, NSXMLParserDelegate, UITableViewDataSource, UITableViewDelegate>
{
    
    IBOutlet UITableView *itemList;
    
    NSURLRequest *request;
    NSURL *url;
    NSURLConnection *connection;
    
    //receives data from request
    NSMutableData *requestData;
    NSString *requestString;
    
    NSMutableArray *anime;
    NSMutableString *currentElement;
    NSMutableDictionary * currentInfo;
    
    AppDelegate * appDelegate;
    
}


@end
