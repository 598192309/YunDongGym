//
//  NSDate+Extension.h
//  FullShareTop
//
//  Created by lqq on 2017/10/11.
//  Copyright © 2017年 FSB. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Extension)
/**
 获取日期所属周的第一天和最后一天
 */
- (NSArray *)getFirstAndLastDayOfThisWeek;


/**
 获取日期所属月的第一天和最后一天
 */
- (NSArray *)getFirstAndLastOfThisMonth;


/**
 获取日期所属年的第一天和最后一天
 */
- (NSArray *)getFirstAndLastOfThisYear;


/**
 向后一个星期
 */
- (NSDate *)backwardOneWeek;


/**
 向前一个星期
 */
- (NSDate *)orwardOneWeek;

/**
 向后一个月
 */
- (NSDate *)backwardOneMonth;


/**
 向前一个月
 */
- (NSDate *)orwardOneMonth;

/**
 向后一年
 */
- (NSDate *)backwardOneYear;


/**
 向前一年
 */
- (NSDate *)orwardOneYear;


/**
 一天的开始 yyyy-MM-dd 00:00:00
 */
- (NSDate *)dateAtStartOfDay;


///**
// 当前时间分钟数  例如：2017-10-12 12:30:12 ----> 12*60+30
// */
//- (NSInteger)minutesOfDay;
@end
