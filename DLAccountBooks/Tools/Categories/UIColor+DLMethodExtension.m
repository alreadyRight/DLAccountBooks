//
//  UIColor+DLMethodExtension.m
//  DLAccountBooks
//
//  Created by 周冰烽 on 2019/7/18.
//  Copyright © 2019 周冰烽. All rights reserved.
//

#import "UIColor+DLMethodExtension.h"

@implementation UIColor (DLMethodExtension)

+ (instancetype)DLColorWithRed:(uint8_t)red green:(uint8_t)green blue:(uint8_t)blue alpha:(CGFloat)alpha {
	
	return [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:alpha];
	
}

+ (instancetype)DLColorWithHex:(uint32_t)hex alpha:(CGFloat)alpha {
	
	uint8_t red = (hex & 0xff0000) >> 16;
	
	uint8_t green = (hex & 0x00ff00) >> 8;
	
	uint8_t blue = hex & 0x0000ff;
	
	return [self DLColorWithRed:red green:green blue:blue alpha:alpha];
	
}

+ (instancetype)DLRandomColor {
	
	return [UIColor DLColorWithRed:arc4random_uniform(256) green:arc4random_uniform(256) blue:arc4random_uniform(256) alpha:1.0];
	
}

@end
