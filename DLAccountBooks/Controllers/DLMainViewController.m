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
}


/**
 UITabbarController添加子控制器的方法封装,以及子控制器设置

 @param title 子控制器标题
 @param image tabbar_normal_image
 @param selectImage tabbar_selecte_image
 @param class 子控制器类
 */
- (void) setupChildVcWithTitle:(NSString *)title image:(NSString *)image selectImage:(NSString *)selectImage class:(Class)class {
	
	//初始化控制器
	DLBaseViewController *cls = [[DLBaseViewController alloc]init];
	
	//每个子控制器的tabBarItem设置
	cls.tabBarItem.title = title;
	
	cls.tabBarItem.image = [UIImage imageNamed:image];
	
	cls.tabBarItem.selectedImage = [UIImage imageNamed:selectImage];
	
	//包装一个导航控制器,添加导航控制器为tabBarController的子控制器
	DLNavigationViewController *naviVC = [[DLNavigationViewController alloc]initWithRootViewController:cls];
	
	//添加到self
	[self addChildViewController:naviVC];
}

@end
