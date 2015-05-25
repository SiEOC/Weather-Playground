//
//  WPViewController.m
//  Weather Playground
//
//  Created by Joshua Howland on 6/17/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "WPViewController.h"
#import "WeatherController.h"

@interface WPViewController ()

@end

@implementation WPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //[[NetworkController sharedInstance] getWeatherWithName:@"London,uk"];
    //Weather *weather = [Weather new];
    //[weather getWeatherWithName:@"Salt/%20Lake/%20City,Utah"];
    WeatherController *weatherController = [WeatherController sharedInstance];
    [weatherController getWeatherWithName:@"London,uk" completion:^(Weather *weather)
     {
         NSLog(@"weather=\r%@", weather);
     }
     ];
    
    //- (void)someMethodThatTakesABlock:(returnType (^)(parameterTypes))blockName;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
