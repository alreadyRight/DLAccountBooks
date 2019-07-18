//
//  DLMainViewController.m
//  DLAccountBooks
//
//  Created by 周冰烽 on 2019/7/18.
//  Copyright © 2019 周冰烽. All rights reserved.
//

#import "DLMainViewController.h"

@interface DLMainViewController ()

@end

@implementation DLMainViewController

// 当此控制器第一次接收到消息时,会调用此方法,不需要主动调用
// 自定义tabbarItem字体颜色
+ (void)initialize {
	// 创建未选中tabbarItem颜色Attributes(属性)
	NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
	attrs[NSForegroundColorAttributeName] = default_gray_color;
	
	// 创建选中tabbarItem颜色Attributes
	NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
	
	// 通过appearance统一设置所有UITabBarItem的文字属性
	UITabBarItem *item;
	if (@available(iOS 9.0, *)) {
		item = [UITabBarItem appearanceWhenContainedInInstancesOfClasses:@[[self class]]];
	} else {
		item = [UITabBarItem appearanceWhenContainedIn:[self class], nil];
	}
	
	[item setTitleTextAttributes:attrs forState:UIControlStateNormal];
	[item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
}

- (void)viewDidLoad{
	[super viewDidLoad];
	
}

@end
