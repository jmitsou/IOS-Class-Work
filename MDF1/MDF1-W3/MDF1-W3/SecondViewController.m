//
//  SecondViewController.m
//  MDF1-W3
//
//  Created by Jeff Mitsou on 8/20/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "SecondViewController.h"
#import "businessManager.h"
#import "MyMapAnnotation.h"
#import "DetailViewController.h"
#import "StoreInfo.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Shop Locations", @"Shop Locations");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [businessManager CreateInstance];
    
    businessManager *bManager = [businessManager GetInstance];
    if (bManager != nil)
    {
        //sets default span and zoom levels
        MKCoordinateSpan span;
        span.latitudeDelta = 10.0f;
        span.longitudeDelta = 10.0f;
        
        //sets location on map
        CLLocationCoordinate2D location;
        location.latitude = 44.2056;
        location.longitude = -70.3064;
        
        //sets the location and span for the screen
        MKCoordinateRegion region;
        region.center = location;
        region.span = span;
        
        //adds region to map
        secondView.region = region;
        
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)viewWillAppear:(BOOL)animated
{
    [businessManager CreateInstance];
    businessManager * bManager = [businessManager GetInstance];
    
    NSMutableArray *storeAnnotations = bManager.aniStores;
    
    if (dirty == NO)
    {
        if ([storeAnnotations count] > 0)
        {
            //remove the annotations
            [secondView removeAnnotations:secondView.annotations];
        }
    }
    else if (dirty == YES)
    {
        dirty = NO;
    }
    
    //adds pins to the map
    for (int i=0; i<[storeAnnotations count]; i++)
    {
        MyMapAnnotation *mapAnn = [[MyMapAnnotation alloc] initWithTitle:[[storeAnnotations objectAtIndex:i]aniName] coord:[[storeAnnotations objectAtIndex:i]actualLocation]];
        if (mapAnn != nil)
        {
            [secondView addAnnotation:mapAnn];
        }
    }
        
    [super viewWillAppear:true];
}

//animation for pins
-(MKAnnotationView *) mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKPinAnnotationView *anView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"CustomPin"];
    if (anView != nil)
    {
        //animates drop pin
        anView.animatesDrop = true;
        //changes pin color
        anView.pinColor = MKPinAnnotationColorRed;
        anView.canShowCallout = YES;
    }
    return anView;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
