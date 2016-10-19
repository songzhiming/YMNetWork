//
//  AppDelegate.m
//  YMNetWork
//
//  Created by 宋志明 on 16/10/12.
//  Copyright © 2016年 宋志明. All rights reserved.
//

#import "AppDelegate.h"
#import "YMNetWork.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    YMNetWorkConfig *config = [YMNetWorkConfig sharedInstance];
    config.baseUrl = @"http://yimai.api.xywy.com";
    config.additionalArguments = @{@"test":@"2"};

    YMBaseRequest *request = [[YMBaseRequest alloc]init];
    request.requestUrl = @"/app/1.3/club/doctorApp.interface.php";
    request.requestArgument = @{@"command":@"login",
                                @"password":@"H1/koYbICzsU4CGh3aBCSNpioKV0FEcVx7XS5fkE5EWN9symN6dw3LxwdcV3c/vaX0CEtDzuajDZ6Opg4Ae9jo1aNMWpxsYxU4gmreT9sohfa94eP7KrNE8rcjglwzt/kyF4v/JASWuNg/4zyou8kcVG6HiUhEv/UL9KNqTcPvc=",
                                @"phone":@"15117951262",
                                @"reg_id":@"",
                                @"sign":@"7350edc127f778ec41bad899775f8b62"};
    request.requestHeaderField = @{@"sssss":@"aaa"};
    [request startWithCompletionBlockWithSuccess:^(__kindof YMBaseRequest * _Nonnull request) {
        NSLog(@"request0---%@",request.responseObject);
    } failure:^(__kindof YMBaseRequest * _Nonnull request) {
        NSLog(@"request.error--%@",request.error);
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
