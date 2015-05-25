//
//  Weather.m
//  Weather Playground
//
//  Created by Douglas Voss on 5/25/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Weather.h"
#import "NetworkController.h"

@implementation Weather

-(instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        NSDictionary *weatherDict = dict[@"weather"][0];
        NSDictionary *mainDict = dict[@"main"];
        self.locationName = dict[@"name"];
    	self.weatherMain = weatherDict[@"main"];
    	self.weatherDescription = weatherDict[@"description"];
    	self.weatherIcon = weatherDict[@"icon"];
    	self.weatherTemp = mainDict[@"temp"];
    }
    return self;
}

- (NSString *)description
{
    NSMutableString *mutStr = [NSMutableString new];
    
    [mutStr appendString:[NSString stringWithFormat:@"locationName: %@\r", self.locationName]];
    [mutStr appendString:[NSString stringWithFormat:@"weatherMain: %@\r", self.weatherMain]];
    [mutStr appendString:[NSString stringWithFormat:@"weatherDescription: %@\r", self.weatherDescription]];
    [mutStr appendString:[NSString stringWithFormat:@"weatherIcon: %@\r", self.weatherIcon]];
    [mutStr appendString:[NSString stringWithFormat:@"weatherTemp: %@\r", self.weatherTemp]];
    return mutStr;
}

@end
