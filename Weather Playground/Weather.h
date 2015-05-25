//
//  Weather.h
//  Weather Playground
//
//  Created by Douglas Voss on 5/25/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
@import CoreLocation;

@interface Weather : NSObject

@property (strong, nonatomic) NSString *locationName;
@property (strong, nonatomic) NSString *weatherMain;
@property (strong, nonatomic) NSString *weatherDescription;
@property (strong, nonatomic) NSString *weatherIcon;
@property (strong, nonatomic) NSString *weatherTemp;

-(instancetype)initWithDictionary:(NSDictionary *)dict;
- (void)getWeatherWithName:(NSString *)name;

- (NSString *)description;

@end
