//
//  NetworkLib.h
//  NetworkLib
//
//  Created by Kamil Burczyk on 08.02.2014.
//  Copyright (c) 2014 Sigmapoint. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AFHTTPRequestOperationManager;

@interface NetworkLib : NSObject

- (void)getGithubReposForUser:(NSString*)user withSuccess:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

@end
