//
//  NetworkLibTests.m
//  NetworkLibTests
//
//  Created by Kamil Burczyk on 08.02.2014.
//  Copyright (c) 2014 Sigmapoint. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NetworkLib.h"

@interface NetworkLibTests : XCTestCase

@end

@implementation NetworkLibTests

- (void)testGetReposForBurczyk
{
    __block id JSON;
    
    hxRunInMainLoop(^(BOOL *done) {
        NetworkLib *nl = [[NetworkLib alloc] init];
        [nl getGithubReposForUser:@"burczyk" withSuccess:^(id responseObject) {
            NSLog(@"Response: %@", responseObject);
            JSON = responseObject;
            *done = YES;
        } failure:^(NSError *error) {
            *done = YES;
        }];
    });
    
    XCTAssertNotNil(JSON, @"");
}

- (void)testGetRepoForNotExistingUser
{
    __block id JSON;
    
    hxRunInMainLoop(^(BOOL *done) {
        NetworkLib *nl = [[NetworkLib alloc] init];
        [nl getGithubReposForUser:@"burczyk1234567890" withSuccess:^(id responseObject) {
            NSLog(@"Response: %@", responseObject);
            JSON = responseObject;
            *done = YES;
        } failure:^(NSError *error) {
            *done = YES;
        }];
    });
    
    XCTAssertNil(JSON, @"");
}

// Wrapper to test async methods: http://stackoverflow.com/questions/2162213/how-to-unit-test-asynchronous-apis
static inline void hxRunInMainLoop(void(^block)(BOOL *done)) {
    __block BOOL done = NO;
    block(&done);
    while (!done) {
        [[NSRunLoop mainRunLoop] runUntilDate: [NSDate dateWithTimeIntervalSinceNow:.1]];
    }
}

@end
