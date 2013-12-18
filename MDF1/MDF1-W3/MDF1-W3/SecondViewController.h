//
//  SecondViewController.h
//  MDF1-W3
//
//  Created by Jeff Mitsou on 8/20/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface SecondViewController : UIViewController <MKMapViewDelegate>
{
    IBOutlet MKMapView * secondView;
    
    BOOL dirty;
}

@end
