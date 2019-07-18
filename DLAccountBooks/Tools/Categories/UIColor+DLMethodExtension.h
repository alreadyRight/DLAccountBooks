//
//  UIColor+DLMethodExtension.h
//  DLAccountBooks
//
//  Created by 周冰烽 on 2019/7/18.
//  Copyright © 2019 周冰烽. All rights reserved.
//

/** UIColor 类方法扩展 */

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (DLMethodExtension)

/**
 rgb颜色设置

 @param red 0 ~ 255.0
 @param green 0 ~ 255.0
 @param blue 0 ~ 255.0
 @param alpha 0 ~ 1.0
 @return UIColor object
 */
+ (instancetype)DLColorWithRed:(uint8_t)red green:(uint8_t)green blue:(uint8_t)blue alpha:(CGFloat)alpha;

/**
 16进制颜色设置

 @param hex 0x000000 ~ 0xFFFFFF
 @param alpha 0 ~ 1
 @return UIColor object
 */
+ (instancetype)DLColorWithHex:(uint32_t)hex alpha:(CGFloat)alpha;

/**
 随机颜色

 @return UIColor object
 */
+(instancetype)DLRandomColor;

@end

NS_ASSUME_NONNULL_END
