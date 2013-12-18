//
//  ViewController.h
//  MDF2-W2
//
//  Created by Jeff Mitsou on 10/9/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Accounts/Accounts.h>

@interface ViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>
{
    IBOutlet UICollectionView * customView;
    
    NSArray *list;
    ACAccount *userAccount;
    NSDictionary *twitterDictionary;
    NSDictionary *twitterData;
    NSMutableArray *userInfo;
}

@property (nonatomic, strong) NSDictionary *twitterDictionary;
@property (nonatomic, strong) NSDictionary *twitterData;

@end
