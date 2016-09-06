//
//  ViewController.m
//  RMMap
//
//  Created by Student P_05 on 06/09/16.
//  Copyright © 2016 Rahul Mankar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    locationManager=[[CLLocationManager alloc]init];
    [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    [locationManager requestAlwaysAuthorization];
    [locationManager requestWhenInUseAuthorization];
    
    self.mapViewOutlet.showsUserLocation=YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)mapTypeAction:(id)sender {
    
    UISegmentedControl *segmentedControl=sender;
    if (segmentedControl.selectedSegmentIndex==0) {
        [self.mapViewOutlet setMapType:MKMapTypeStandard];
        
    }
    else if (segmentedControl.selectedSegmentIndex==1) {
        [self.mapViewOutlet setMapType:MKMapTypeSatellite];
    }
    else
        
            [self.mapViewOutlet setMapType:MKMapTypeHybrid];
    

    
}


#pragma mark cllocation delegate methods
-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    
    NSLog(@"%@",error.localizedDescription);

}
-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    
    CLLocation *currentLocation=locations.lastObject;
    NSLog(@"Lat:%f Long:%f",currentLocation.coordinate.latitude,currentLocation.coordinate.longitude);
    
    
}
@end
