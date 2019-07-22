//
//  DLMainViewController.m
//  DLAccountBooks
//
//  Created by 周冰烽 on 2019/7/18.
//  Copyright © 2019 周冰烽. All rights reserved.
//

#import "DLMainViewController.h"
#import "DLBaseViewController.h"
#import "DLNavigationViewController.h"

@interface DLMainViewController ()

@end

@implementation DLMainViewController

// 当此控制器第一次接收到消息时,会调用此方法,不需要主动调用
// 自定义tabbarItem字体颜色
+ (void)initialize {
	// 创建未选中tabbarItem颜色Attributes(属性)
	NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
	attrs[NSForegroundColorAttributeName] = [UIColor tabNormalColor];
	
	// 创建选中tabbarItem颜色Attributes
	NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
	selectedAttrs[NSForegroundColorAttributeName] = [UIColor tabSelectedColor];
	
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
	self.view.backgroundColor = [UIColor viewBgColor];
	[self addChildVCWithTitle:@"今日记账" clsName:@"DLTodayAccountController"];
	[self addChildVCWithTitle:@"账单统计" clsName:@"DLStatisticalAccountViewController"];
}


/**
 UITabbarController添加子控制器的方法封装,以及子控制器设置

 @param title 子控制器标题
 @param clsName 子控制器类名称
 */
- (void)addChildVCWithTitle:(NSString *)title clsName:(NSString *)clsName {
	// 初始化控制器
	Class cls = NSClassFromString(clsName);
	// 断言强转是否成功,成功继续执行,失败则抛出异常
	NSAssert([cls isSubclassOfClass:[DLBaseViewController class]], @"强制类型转换失败");
	DLBaseViewController *vc = [[cls alloc]init];
	
	//给子控制器的tabbar属性赋值
	vc.title = title;

	vc.tabBarItem.image = [UIImage imageNamed:[NSString stringWithFormat:@"tabbar_%@",clsName]];

	vc.tabBarItem.selectedImage = [UIImage imageNamed:[NSString stringWithFormat:@"tabbar_%@_selected",clsName]];

	//包装一个导航控制器,添加导航控制器为tabBarController的子控制器
	DLNavigationViewController *naviVC = [[DLNavigationViewController alloc]initWithRootViewController:vc];
	
	[self addChildViewController:naviVC];
	
}

@end
