//
//  WeatherController.h
//  Weather Playground
//
//  Created by Douglas Voss on 5/25/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weather.h"

@interface WeatherController : NSObject

+ (instancetype) sharedInstance;

- (void)getWeatherWithName:(NSString *)name completion:(void (^)(Weather *weather))completion;

@end
