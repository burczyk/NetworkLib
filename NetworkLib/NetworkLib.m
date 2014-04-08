//
//  NetworkLib.m
//  NetworkLib
//
//  Created by Kamil Burczyk on 08.02.2014.
//  Copyright (c) 2014 Sigmapoint. All rights reserved.
//

#import "NetworkLib.h"
#import "AFNetworking.h"

@implementation NetworkLib

- (AFHTTPRequestOperation*)getGithubReposForUser:(NSString*)user withSuccess:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    return [manager GET:[NSString stringWithFormat:@"https://api.github.com/users/%@/repos", user] parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

@end
