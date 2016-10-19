//
//  YMNetWorkConfig.h
//  YMNetWork
//
//  Created by 宋志明 on 16/10/12.
//  Copyright © 2016年 宋志明. All rights reserved.
//

#import <Foundation/Foundation.h>


@class AFSecurityPolicy;

NS_ASSUME_NONNULL_BEGIN
@interface YMNetWorkConfig : NSObject
// 不可用
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new  NS_UNAVAILABLE;
// 单例
+ (YMNetWorkConfig *)sharedInstance;
// baseURL  like "http://www.apple.com/". Default is empty string.
@property (nonatomic, strong) NSString *baseUrl;
// 安全协议   Default is  [AFSecurityPolicy defaultPolicy]
@property (nonatomic, strong) AFSecurityPolicy *securityPolicy;
// 附加的参数 默认是 nil
@property (nonatomic, strong) NSDictionary *additionalArguments;
@end
NS_ASSUME_NONNULL_END
