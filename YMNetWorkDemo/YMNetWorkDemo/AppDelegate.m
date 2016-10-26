//
//  AppDelegate.m
//  YMNetWorkDemo
//
//  Created by 宋志明 on 16/10/19.
//  Copyright © 2016年 宋志明. All rights reserved.
//

#import "AppDelegate.h"
#import "YMNetWork.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    // 天气接口
//    YMBaseRequest *request = [[YMBaseRequest alloc]init];
//    request.baseUrl = @"http://www.weather.com.cn/data/sk/101190408.html";
//    [request startWithCompletionBlockWithSuccess:^(__kindof YMBaseRequest * _Nonnull request) {
//        NSLog(@"request---%@",request.responseObject);
//    } failure:^(__kindof YMBaseRequest * _Nonnull request) {
//        NSLog(@"eroor=----%@",request.error);
//    }];
    // 下载功能
    YMBaseRequest *request = [[YMBaseRequest alloc]init];
    request.requestMethod = YMRequestMethodDownload;
    request.baseUrl = @"http://dldir1.qq.com/qqfile/QQforMac/QQ_V5.2.0.dmg";
    request.downLoadFilePath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
    // 获取tmp目录路径
    [request downloadWithBlock:^(NSProgress * _Nonnull progress) {
        NSLog(@"progress---%@",progress);
    } success:^(__kindof YMBaseRequest * _Nonnull request) {
        NSLog(@"路径---%@",request.responseObject);
    } failure:^(__kindof YMBaseRequest * _Nonnull request) {
        NSLog(@"error---%@",request);
    }];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
