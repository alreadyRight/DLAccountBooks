//
//  UIColor+DLThemeColor.m
//  DLAccountBooks
//
//  Created by 周冰烽 on 2019/7/18.
//  Copyright © 2019 周冰烽. All rights reserved.
//

/**
 *	default 默认主题
 *	dark	黑暗主题
 *	eyecare	护眼主题
 */

#import "UIColor+DLThemeColor.h"
#import "UIColor+DLMethodExtension.h"
@implementation UIColor (DLThemeColor)

+ (instancetype)tabNormalColor {
	// tabbar未选中颜色各个主题都一样,所以直接返回一个
	return [UIColor DLColorWithHex:0xB5B5B5 alpha:1.0];
}

+ (instancetype)tabSelectedColor {
	// tabbar选中颜色各个主题都一样,所以直接返回一个
	return [UIColor DLColorWithHex:0x9400D3 alpha:1.0];
}

+ (instancetype)viewBgColor {
	if ([dl_app_theme isEqualToString:@"default"]) {
		return [UIColor whiteColor];
	} else if ([dl_app_theme isEqualToString:@"dark"]) {
		return [UIColor DLColorWithHex:0x232227 alpha:1.0];
	} else {
		return [UIColor DLColorWithHex:0xF0E2C5 alpha:1.0];
	}
}

@end
