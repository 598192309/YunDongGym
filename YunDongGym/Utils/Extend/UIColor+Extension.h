//
//  UIColor+Extension.h
//  FullShareTop
//
//  Created by lqq on 17/3/21.
//  Copyright © 2017年 FSB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Extension)
// 默认alpha位1
+ (UIColor *)colorWithHexString:(NSString *)color;

//从十六进制字符串获取颜色，
//color:支持@“#123456”、 @“0X123456”、 @“123456”三种格式
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

+ (UIColor *)colorWithHex:(int)hexValue;

+ (UIColor *)colorWithHex:(int)hexValue alpha:(CGFloat)alpha;

+ (UIColor *)averageColorFrom:(UIColor *)fromColor to:(UIColor *)toColor percent:(CGFloat)percent;
@end
