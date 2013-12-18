//
//  ViewController.m
//  MDF2-W2
//
//  Created by Jeff Mitsou on 10/9/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "ViewController.h"
#import "CustomCollectionView.h"
#import <Accounts/Accounts.h>
#import <Social/Social.h>
#import "FollowerInfo.h"
#import "DetailViewViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize twitterDictionary, twitterData;

- (void)viewDidLoad
{
    userInfo = [[NSMutableArray alloc] init];
    
    UINib * nib = [UINib nibWithNibName:@"CustomCollectionView" bundle:nil];
    if (nib != nil)
    {
        [customView registerNib:nib forCellWithReuseIdentifier:@"customCell"];
    }

    
    ACAccountStore *accountStore = [[ACAccountStore alloc] init];
    if (accountStore != nil)
    {
        ACAccountType *accountType = [accountStore accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierTwitter];
        if (accountType != nil)
        {
            [accountStore requestAccessToAccountsWithType:accountType options:nil completion:^(BOOL granted, NSError *error){
                if (granted)
                {
                    NSArray *twitterAccounts = [accountStore accountsWithAccountType:accountType];
                    if (twitterAccounts != nil)
                    {
                        userAccount = [twitterAccounts objectAtIndex:0];
                        if (userAccount != nil)
                        {
                            NSString *friendListString = @"https://api.twitter.com/1.1/friends/list.json?cursor=-1&skip_status=true&include_user_entities=false";
                            
                            SLRequest *request = [SLRequest requestForServiceType:SLServiceTypeTwitter requestMethod:SLRequestMethodGET URL:[NSURL URLWithString:friendListString] parameters:nil];
                            if (request != nil)
                            {
                                //1.1 api requires a user to be logged in
                                [request setAccount:userAccount];
                                
                                [request performRequestWithHandler:^(NSData *responseData, NSHTTPURLResponse *urlResponse, NSError *error) {
                                    NSInteger responseCode = [urlResponse statusCode];
                                    if (responseCode == 200)
                                    {
                                        NSError *jsonError = nil;
                                        
                                        list = [NSJSONSerialization JSONObjectWithData:responseData options:0 error:&jsonError];
                                        if (list != nil)
                                        {
                                            NSArray *userArray = [list valueForKey:@"users"];
                                            if (userArray)
                                            {
                                                for (int i = 0; i < [userArray count]; i ++) {
                                                    NSDictionary* singleUser = [userArray objectAtIndex:i];
                                                    FollowerInfo * follower =[[FollowerInfo alloc]init];
                                                    follower.userHandle = [singleUser valueForKey:@"name"];
                                                
                                                    NSString * urlImage = [singleUser valueForKey:@"profile_image_url"];
                                                    NSData* data;
                                                    data = [[NSData alloc]initWithContentsOfURL:[NSURL URLWithString:urlImage]];
                                                    follower.avatar = [UIImage imageWithData:data ];
                                                    [userInfo addObject:follower];
                                                }
                                                [customView reloadData];
                                                //NSLog(@"userArray=%@", [userArray description]);
                                            }
                                            //NSLog(@"%@", [list description]);
                                        }
                                    }
                                }];
                            }
                        }
                    }
                }
                else
                {
                    NSLog(@"User did not grant access");
                }
            }];
        }
    }
    
        
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [userInfo count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCollectionView * cell = [customView dequeueReusableCellWithReuseIdentifier:@"customCell" forIndexPath:indexPath];
    if (cell != nil)
    {
        FollowerInfo* info = [userInfo objectAtIndex:indexPath.row];
        [cell refreshCellData:info.avatar titleString:info.userHandle];
    }
    return cell;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewViewController *detailView = [[DetailViewViewController alloc] initWithNibName:@"DetailViewViewController" bundle:nil];
    if (detailView != nil)
    {
        FollowerInfo* info = [userInfo objectAtIndex:indexPath.row];
        detailView.follower = info;
        
        //Show the detailed view controller
        [self presentViewController:detailView animated:YES completion:nil];
    }

}



@end
