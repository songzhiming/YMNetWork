//
//  YMNetWorkAgent.h
//  YMNetWork
//
//  Created by 宋志明 on 16/10/12.
//  Copyright © 2016年 宋志明. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class YMBaseRequest;

@interface YMNetWorkAgent : NSObject
// 不可用
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new  NS_UNAVAILABLE;
// 单例
+ (YMNetWorkAgent *)sharedInstance;

- (void)addRequest:(YMBaseRequest *)request;
// 暂未加此功能
#pragma mark -todo
- (void)removeRequest:(YMBaseRequest *)request;
@end

NS_ASSUME_NONNULL_END
