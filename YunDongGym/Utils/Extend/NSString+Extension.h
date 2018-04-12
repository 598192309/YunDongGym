//
//  NSString+Extension.h
//  FullShareTop
//
//  Created by lqq on 17/3/21.
//  Copyright © 2017年 FSB. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (Extension)
/**
 *  @brief  根据字符串的宽(或高)和字体的大小计算字符串的size
 *  @param  size 给定字符串的宽或高
 *  @param  font 字体属性
 *  @return 字符串的宽和高
 */
- (CGSize)boundingRectWithSize:(CGSize)size font:(UIFont *)font;

/**
 根据字符串的宽(或高)和字体的大小,字体的行间距计算字符串的size
 
 @param size 字符串的宽(或高)
 @param font 字体的大小
 @param lineSpacing 字体的行间距
 @return 字符串的size
 */
- (CGSize)boundingRectWithSize:(CGSize)size font:(UIFont *)font lineSpacing:(CGFloat)lineSpacing;

/**
 根据字符串的宽(或高)和属性计算字符串的size
 
 @param size 给定字符串的宽或高
 @param attr 字体属性
 @return 字符串的宽和高
 */
- (CGSize)boundingRectWithSize:(CGSize)size attr:(NSDictionary *)attr;

/**
 判断字符串是否包含emoji表情

 @param string 字符串
 @return bool 值
 */
+ (BOOL)stringContainsEmoji:(NSString *)string;


/**
 过滤HTML标签
 */
+ (NSString *)filterHTML:(NSString *)html;
@end
