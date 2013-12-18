//
//  ViewController.h
//  MDF2-W1
//
//  Created by Jeff Mitsou on 10/1/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Accounts/Accounts.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

{
    NSArray *feed;
    ACAccount *userAccount;
    UIAlertView *alert;
    NSDictionary *twitterDictionary;
    NSDictionary *twitterData;
    
    IBOutlet UITableView *tableView;
    
}

-(IBAction)onClick:(id)sender;

-(void)reload;
-(void)errorAlert;
-(void)loadingAlert;

@property (nonatomic, strong) NSDictionary *twitterDictionary;
@property (nonatomic, strong) NSDictionary *twitterData;


@end
