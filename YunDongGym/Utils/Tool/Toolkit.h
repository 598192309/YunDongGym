//
//  Toolkit.h
//  FullShareTop
//
//  Created by lqq on 17/3/21.
//  Copyright © 2017年 FSB. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface Toolkit : NSObject

/**
 *  返回网络是否连接
 *
 *  @return YES——已连接, NO——未连接
 */
+ (BOOL) isNetworkConnect;

/**
 *  获取应用版本号
 *
 *  @return 应用版本号字符串
 */
+ (NSString *)appVersionNo;


/**
 *  整形判断
 */
+ (BOOL)isPureInt:(NSString *)string;
/**
 *  浮点形判断
 */
+ (BOOL)isPureFloat:(NSString *)string;

/**
 *  检查手机号是否合法(只判断了是否为11位数字)
 */
+ (BOOL)checkIfPhoneNumberIsSuit:(NSString *)phoneNumber;


@end
