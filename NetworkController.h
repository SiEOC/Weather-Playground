//
//  NetworkController.h
//  
//
//  Created by Douglas Voss on 5/25/15.
//
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

@interface NetworkController : AFHTTPSessionManager

//- (NSURLSessionDataTask *)GET:(NSString *)URLString parameters:(NSDictionary *)parameters success:(void ( ^ ) ( NSURLSessionDataTask *task , id responseObject ))success failure:(void ( ^ ) ( NSURLSessionDataTask *task , NSError *error ))failure

+ (instancetype) sharedInstance;

@end
