//
//  ObjectController.m
//  Weather Playground
//
//  Created by Douglas Voss on 5/25/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ObjectController.h"

@implementation ObjectController

+ (instancetype) sharedInstance
{
    static ObjectController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[ObjectController alloc] init];
    });
    return sharedInstance;
}

@end
