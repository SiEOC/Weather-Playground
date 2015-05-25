//
//  NetworkController.m
//  
//
//  Created by Douglas Voss on 5/25/15.
//
//

#import "NetworkController.h"
#include "Weather.h"

@implementation NetworkController

+ (instancetype) sharedInstance
{
    static NetworkController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL *urlObj = [NSURL URLWithString:@"http://api.openweathermap.org/data/2.5/"];
        sharedInstance = [[NetworkController alloc] initWithBaseURL:urlObj];
        sharedInstance.responseSerializer = [AFJSONResponseSerializer serializer];
    });
    return sharedInstance;
}

@end
