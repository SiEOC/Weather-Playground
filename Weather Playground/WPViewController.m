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
/*    WeatherController *weatherController = [WeatherController sharedInstance];
    [weatherController getWeatherWithName:@"London,uk" completion:^(Weather *weather)
     {
         NSLog(@"weather=\r%@", weather);
     }
     ];*/
    
    //- (void)someMethodThatTakesABlock:(returnType (^)(parameterTypes))blockName;
}
// Start process of weather
- (IBAction)searchButtonPressed:(UIButton *)sender
{
    WeatherController *weatherController = [WeatherController sharedInstance];
    [weatherController getWeatherWithName:self.searchField.text completion:^(Weather *weather)
     {
         NSLog(@"weather=\r%@", weather);
         self.countryName.text = weather.locationName;
         //self.iconImageView = weather;
         self.tempLabel.text = weather.weatherTemp;
         self.mainLabel.text = weather.weatherMain;
         //self.
         NSLog(@"done");
     }
     ];
    
  /*
   operty (weak, nonatomic) IBOutlet UITextField *searchField;
   
   @property (weak, nonatomic) IBOutlet UILabel *countryName;
   
   @property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
   
   @property (weak, nonatomic) IBOutlet UILabel *tempLabel;
   
   @property (weak, nonatomic) IBOutlet UILabel *mainLabel;
   
   */
     
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
