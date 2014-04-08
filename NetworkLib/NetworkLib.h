//
//  NetworkLib.h
//  NetworkLib
//
//  Created by Kamil Burczyk on 08.02.2014.
//  Copyright (c) 2014 Sigmapoint. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "AFNetworking.h"

@class AFHTTPRequestOperation;

@interface NetworkLib : NSObject

- (AFHTTPRequestOperation*)getGithubReposForUser:(NSString*)user withSuccess:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

@end
