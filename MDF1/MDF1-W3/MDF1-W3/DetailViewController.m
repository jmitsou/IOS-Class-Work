//
//  DetailViewController.m
//  MDF1-W3
//
//  Created by Jeff Mitsou on 8/20/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "DetailViewController.h"
#import "MyMapAnnotation.h"
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize aniStore,aniStoreLocation,name;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    //creates a default span and zoom level
    MKCoordinateSpan span;
    span.latitudeDelta = 0.1f;
    span.longitudeDelta = 0.1f;
    
    MKCoordinateRegion region;
    region.center = aniStoreLocation;
    region.span = span;
    
    detailView.region = region;
    
    name.text = [NSString stringWithFormat:@"%@",aniStore];
    latitude.text = [NSString stringWithFormat:@"%f",aniStoreLocation.latitude];
    longitude.text = [NSString stringWithFormat:@"%f",aniStoreLocation.longitude];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    MyMapAnnotation *mapAnns = [[MyMapAnnotation alloc] initWithTitle:aniStore coord:aniStoreLocation];
    if (mapAnns != nil)
    {
        [detailView addAnnotation:mapAnns];
    }
    [super viewDidAppear:true];
}

-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKPinAnnotationView * pinView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"CustomPin"];
    if (pinView != nil)
    {
        //animates drop pin
        pinView.animatesDrop = true;
        //changes pin color
        pinView.pinColor = MKPinAnnotationColorRed;
        pinView.canShowCallout = YES;
        
    }
    return pinView;
}

-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    //if back button is clicked
    if(button.tag == 0)
    {
        //dismiss view
        [self dismissViewControllerAnimated:TRUE completion:nil];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
