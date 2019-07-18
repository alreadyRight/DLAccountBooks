//
//  AppDelegate.m
//  DLAccountBooks
//
//  Created by 周冰烽 on 2019/7/18.
//  Copyright © 2019 周冰烽. All rights reserved.
//

#import "AppDelegate.h"
#import "DLMainViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	
	//设置默认主题
	NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	
	[userDefaults setObject:@"default" forKey:@"theme"];
	
	[userDefaults synchronize];
	
	//设置程序首页面
	self.window = [[UIWindow alloc]initWithFrame:dlDeviceBounds];
	
	DLMainViewController *mainVC = [[DLMainViewController alloc]init];
	
	self.window.rootViewController = mainVC;
	
	[self.window makeKeyAndVisible];
	
	return YES;
}


@end
