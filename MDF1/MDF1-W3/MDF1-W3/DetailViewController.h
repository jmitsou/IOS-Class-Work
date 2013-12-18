//
//  DetailViewController.h
//  MDF1-W3
//
//  Created by Jeff Mitsou on 8/20/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface DetailViewController : UIViewController <MKMapViewDelegate>
{
    IBOutlet UILabel *name;
    IBOutlet UILabel *longitude;
    IBOutlet UILabel *latitude;
    
    IBOutlet MKMapView *detailView;
    
}

- (IBAction)onClick:(id)sender;

@property (strong) NSString *aniStore;
@property (strong,nonatomic) UILabel *name;
@property CLLocationCoordinate2D aniStoreLocation;

@end
