//
//  WeatherController.m
//  Weather Playground
//
//  Created by Douglas Voss on 5/25/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "WeatherController.h"
#import "NetworkController.h"

@implementation WeatherController

+ (instancetype) sharedInstance
{
    static WeatherController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[WeatherController alloc] init];
    });
    return sharedInstance;
}

- (void)getWeatherWithName:(NSString *)name completion:(void (^)(Weather *weather))completion
{
    NSString *getParam = [NSString stringWithFormat:@"weather?q=%@", name];
    
    [[NetworkController sharedInstance] GET:getParam parameters:nil
    success:
    ^( NSURLSessionDataTask *task , id responseObject )
    {
        NSDictionary *dict = responseObject;
        NSLog(@"got responseObject == %@", dict);
        Weather *weatherObj = [[Weather alloc] initWithDictionary:dict];
        NSLog(@"weatherObj: %@", weatherObj);
        completion(weatherObj);
    }
    failure:
    ^( NSURLSessionDataTask *task , NSError *error) {
        NSLog(@"weather request failed!");
    }];
}

    /*2015-05-25 15:27:33.301 Weather Playground[10282:113770] got responseObject == {
        base = stations;
        clouds =     {
            all = 48;
        };
        cod = 200;
        coord =     {
            lat = "40.76";
            lon = "-111.89";
        };
        dt = 1432589233;
        id = 0;
        main =     {
            "grnd_level" = "810.5599999999999";
            humidity = 74;
            pressure = "810.5599999999999";
            "sea_level" = "1022.31";
            temp = "285.675";
            "temp_max" = "285.675";
            "temp_min" = "285.675";
        };
        name = "Salt Lake City";
        rain =     {
            3h = "0.8125";
        };
        sys =     {
            country = "United States of America";
            message = "1.9287";
            sunrise = 1432555307;
            sunset = 1432608437;
        };
        weather =     (
                       {
                           description = "light rain";
                           icon = 10d;
                           id = 500;
                           main = Rain;
                       }
                       );
        wind =     {
            deg = "274.506";
            speed = "1.21";
        };
    }
*/


@end
