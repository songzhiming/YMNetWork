//
//  YMBaseRequest.h
//  YMNetWork
//
//  Created by 宋志明 on 16/10/12.
//  Copyright © 2016年 宋志明. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
// http request method
typedef NS_ENUM(NSInteger, YMRequestMethod) {
    YMRequestMethodGET = 0,
    YMRequestMethodPOST,
    YMRequestMethodHEAD,
    YMRequestMethodPUT,
    YMRequestMethodDELETE
};

@class YMBaseRequest;
typedef void(^YTKRequestCompletionBlock)(__kindof YMBaseRequest *request);

@interface YMBaseRequest : NSObject
#pragma mark - block
// success block
@property (nonatomic, copy, nullable) YTKRequestCompletionBlock successCompletionBlock;
// failure block
@property (nonatomic, copy, nullable) YTKRequestCompletionBlock failureCompletionBlock;

#pragma mark - response
//  请求task
@property (nonatomic, strong) NSURLSessionTask *requestTask;
//  == requestRequest.currentRequest
@property (nonatomic, strong, readonly) NSURLRequest *currentRequest;
//  == requestRequest.originalRequest
@property (nonatomic, strong, readonly) NSURLRequest *originalRequest;
//  == requestTask.response
@property (nonatomic, strong, readonly) NSHTTPURLResponse *response;
//  == response.statusCode
@property (nonatomic, readonly) NSInteger responseStatusCode;
//  The response header fields.
@property (nonatomic, strong, nullable) NSDictionary *responseHeaders;
//  The raw data representation of response. Note this value can be nil if request failed.
@property (nonatomic, strong, nullable) NSData *responseData;
//  The string representation of response. Note this value can be nil if request failed.
@property (nonatomic, strong, nullable) NSString *responseString;
//
@property (nonatomic, strong, nullable) id responseObject;
//
@property (nonatomic, strong, nullable) id responseJSONObject;
//
@property (nonatomic, strong, nullable) NSError *error;


#pragma mark - request
// baseUrl 优先用这儿的baseUrl 再用config 的baseUrl
@property (nonatomic, strong) NSString *baseUrl;
// 请求URL  like "/aa/bb"
@property (nonatomic, strong) NSString *requestUrl;
// 请求超时 时间  默认20s
@property (nonatomic)         NSTimeInterval requestTimeoutInterval;
// 请求参数  默认nil
@property (nonatomic, strong,nullable) NSDictionary *requestArgument;
// 请求方式  默认get
@property (nonatomic, assign) YMRequestMethod requestMethod;
// 请求的头  默认nil    
@property (nonatomic, strong,nullable) NSDictionary *requestHeaderField;

#pragma mark - 
+ (instancetype)new  NS_UNAVAILABLE;
// 开始请求
- (void)startWithCompletionBlockWithSuccess:(nullable YTKRequestCompletionBlock)success
                                    failure:(nullable YTKRequestCompletionBlock)failure;

- (void)clearCompletionBlock;

@end
NS_ASSUME_NONNULL_END
