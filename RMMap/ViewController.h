//
//  ViewController.h
//  RMMap
//
//  Created by Student P_05 on 06/09/16.
//  Copyright © 2016 Rahul Mankar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController<MKMapViewDelegate,CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
}

@property (strong, nonatomic) IBOutlet MKMapView *mapViewOutlet;

@property (strong, nonatomic) IBOutlet UISegmentedControl *mapType;
- (IBAction)mapTypeAction:(id)sender;

@end

