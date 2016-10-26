//
//  YMNetWorkConfig.m
//  YMNetWork
//
//  Created by 宋志明 on 16/10/12.
//  Copyright © 2016年 宋志明. All rights reserved.
//

#import "YMNetWorkConfig.h"


#if __has_include(<AFNetworking/AFNetworking.h>)
#import <AFNetworking/AFNetworking.h>
#else
#import "AFNetworking.h"
#endif

@implementation YMNetWorkConfig

+ (YMNetWorkConfig *)sharedInstance
{
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance =  [[self alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _baseUrl = @"";
        _securityPolicy = [AFSecurityPolicy defaultPolicy];
        _additionalArguments = nil;
    }
    return self;
}


#pragma mark - description
//- (NSString *)description{
//    return [NSString stringWithFormat:@"<%@: %p>{ baseURL: %@ } ", NSStringFromClass([self class]), self, self.baseUrl];
//}
@end
