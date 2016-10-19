//
//  YMBaseRequest.m
//  YMNetWork
//
//  Created by 宋志明 on 16/10/12.
//  Copyright © 2016年 宋志明. All rights reserved.
//

#import "YMBaseRequest.h"
#import "YMNetWorkAgent.h"

@implementation YMBaseRequest

#pragma mark - Request and Response Information

- (NSHTTPURLResponse *)response {
    return (NSHTTPURLResponse *)self.requestTask.response;
}

- (NSInteger)responseStatusCode {
    return self.response.statusCode;
}

- (NSDictionary *)responseHeaders {
    return self.response.allHeaderFields;
}

- (NSURLRequest *)currentRequest {
    return self.requestTask.currentRequest;
}

- (NSURLRequest *)originalRequest {
    return self.requestTask.originalRequest;
}



#pragma mark -
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.baseUrl = @"";
        self.requestUrl = @"";
        self.requestTimeoutInterval = 20;
        self.requestArgument = nil;
        self.requestHeaderField = nil;
    }
    return self;
}
- (void)clearCompletionBlock {
    // nil out to break the retain cycle.
    self.successCompletionBlock = nil;
    self.failureCompletionBlock = nil;
}

- (void)startWithCompletionBlockWithSuccess:(nullable YTKRequestCompletionBlock)success
                                    failure:(nullable YTKRequestCompletionBlock)failure
{
    self.successCompletionBlock = success;
    self.failureCompletionBlock = failure;
    [[YMNetWorkAgent sharedInstance]addRequest:self];
}
#pragma mark - description
- (NSString *)description{
    return @"YMBaseRequest";
}
@end
