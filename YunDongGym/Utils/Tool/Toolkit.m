//
//  Toolkit.m
//  FullShareTop
//
//  Created by lqq on 17/3/21.
//  Copyright © 2017年 FSB. All rights reserved.
//

#import "Toolkit.h"
#import <Reachability/Reachability.h>

@implementation Toolkit


/**
 *  返回网络是否连接
 *
 *  @return YES——已连接, NO——未连接
 */
+ (BOOL)isNetworkConnect{
    return [[Reachability reachabilityForInternetConnection] currentReachabilityStatus] != NotReachable && [[Reachability reachabilityForLocalWiFi] currentReachabilityStatus] != NotReachable;
}


/**
 *  获取应用版本号
 *
 *  @return 应用版本号字符串
 */
+ (NSString *)appVersionNo{
    return [[[NSBundle mainBundle] infoDictionary] safeObjectForKey:@"CFBundleShortVersionString"];
}



/**
 *  整形判断
 */
+ (BOOL)isPureInt:(NSString *)string{
    NSScanner* scan = [NSScanner scannerWithString:string];
    int val;
    return [scan scanInt:&val] && [scan isAtEnd];
}

/**
 *  浮点形判断
 */
+ (BOOL)isPureFloat:(NSString *)string{
    NSScanner* scan = [NSScanner scannerWithString:string];
    float val;
    return [scan scanFloat:&val] && [scan isAtEnd];
}

/**
 *  检查手机号是否合法(只判断了是否为11位数字)
 */
+ (BOOL)checkIfPhoneNumberIsSuit:(NSString *)phoneNumber
{
    NSString *phoneRegex = @"[0-9]{11}";
    
    NSPredicate *phonePredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneRegex];
    
    return [phonePredicate evaluateWithObject:phoneNumber];
    
}



@end
