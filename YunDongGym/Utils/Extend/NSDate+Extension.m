//
//  NSDate+Extension.m
//  FullShareTop
//
//  Created by lqq on 2017/10/11.
//  Copyright © 2017年 FSB. All rights reserved.
//

#import "NSDate+Extension.h"

#define DATE_COMPONENTS (NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitWeekOfYear |  NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond | NSCalendarUnitWeekday | NSCalendarUnitWeekdayOrdinal)
#define CURRENT_CALENDAR [NSCalendar currentCalendar]


@implementation NSDate (Extension)
/**
 获取日期所属周的第一天和最后一天
 */
- (NSArray *)getFirstAndLastDayOfThisWeek
{
    NSDate *nowDate = self;
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *comp = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitWeekday fromDate:nowDate];
    // 获取今天是周几
    NSInteger weekDay = [comp weekday];
    // 获取几天是几号
    NSInteger day = [comp day];
    NSLog(@"%ld----%ld",(long)weekDay,(long)day);
    
    // 计算当前日期和本周的星期一和星期天相差天数
    long firstDiff,lastDiff;
    //    weekDay = 1;
    if (weekDay == 1)
    {
        firstDiff = -6;
        lastDiff = 0;
    }
    else
    {
        firstDiff = [calendar firstWeekday] - weekDay + 1;
        lastDiff = 8 - weekDay;
    }
    NSLog(@"firstDiff: %ld   lastDiff: %ld",firstDiff,lastDiff);
    
    // 在当前日期(去掉时分秒)基础上加上差的天数
    NSDateComponents *firstDayComp = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay  fromDate:nowDate];
    [firstDayComp setDay:day + firstDiff];
    NSDate *mondayDate = [calendar dateFromComponents:firstDayComp];
    
    NSDateComponents *lastDayComp = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay   fromDate:nowDate];
    [lastDayComp setDay:day + lastDiff];
    NSDate *weekdayDate = [calendar dateFromComponents:lastDayComp];
    
    return @[mondayDate,weekdayDate];
}


/**
 获取日期所属月的第一天和最后一天
 */
- (NSArray *)getFirstAndLastOfThisMonth
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDate *firstDay;
    [calendar rangeOfUnit:NSCalendarUnitMonth startDate:&firstDay interval:nil forDate:self];
    NSDateComponents *lastDateComponents = [calendar components:NSCalendarUnitMonth | NSCalendarUnitYear |NSCalendarUnitDay fromDate:firstDay];
    NSUInteger dayNumberOfMonth = [calendar rangeOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:self].length;
    NSInteger day = [lastDateComponents day];
    [lastDateComponents setDay:day+dayNumberOfMonth-1];
    NSDate *lastDay = [calendar dateFromComponents:lastDateComponents];
    return [NSArray arrayWithObjects:firstDay,lastDay, nil];
}


/**
 获取日期所属年的第一天和最后一天
 */
- (NSArray *)getFirstAndLastOfThisYear
{
    //通过2月天数的改变，来确定全年天数
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeZone:[NSTimeZone systemTimeZone]];
    [formatter setDateFormat:@"yyyy"];
    NSString *dateStr = [formatter stringFromDate:self];
    dateStr = [dateStr stringByAppendingString:@"-02-14"];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    NSDate *aDayOfFebruary = [formatter dateFromString:dateStr];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDate *firstDay;
    [calendar rangeOfUnit:NSCalendarUnitYear startDate:&firstDay interval:nil forDate:self];
    NSDateComponents *lastDateComponents = [calendar components:NSCalendarUnitMonth | NSCalendarUnitYear | NSCalendarUnitDay fromDate:firstDay];
    NSUInteger dayNumberOfFebruary = [calendar rangeOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:aDayOfFebruary].length;
    NSInteger day = [lastDateComponents day];
    [lastDateComponents setDay:day+337+dayNumberOfFebruary-1];
    NSDate *lastDay = [calendar dateFromComponents:lastDateComponents];
    
    return [NSArray arrayWithObjects:firstDay,lastDay, nil];
}



/**
 向后一个星期
 */
- (NSDate *)backwardOneWeek
{
    NSDateComponents *BeforeDate = [[NSDateComponents alloc] init];
    BeforeDate.day = 7;
    NSDate *selectDay = [[NSCalendar currentCalendar] dateByAddingComponents:BeforeDate toDate:self options:0];
    return selectDay;
}


/**
 向前一个星期
 */
- (NSDate *)orwardOneWeek
{
    NSDateComponents *BeforeDate = [[NSDateComponents alloc] init];
    BeforeDate.day = -7;
    NSDate *selectDay = [[NSCalendar currentCalendar] dateByAddingComponents:BeforeDate toDate:self options:0];
    return selectDay;
}

/**
 向后一个月
 */
- (NSDate *)backwardOneMonth
{
    NSDateComponents *BeforeDate = [[NSDateComponents alloc] init];
    BeforeDate.month = 1;
    NSDate *selectDay = [[NSCalendar currentCalendar] dateByAddingComponents:BeforeDate toDate:self options:0];
    return selectDay;
}


/**
 向前一个月
 */
- (NSDate *)orwardOneMonth
{
    NSDateComponents *BeforeDate = [[NSDateComponents alloc] init];
    BeforeDate.month = -1;
    NSDate *selectDay = [[NSCalendar currentCalendar] dateByAddingComponents:BeforeDate toDate:self options:0];
    return selectDay;
}

/**
 向后一年
 */
- (NSDate *)backwardOneYear
{
    NSDateComponents *BeforeDate = [[NSDateComponents alloc] init];
    BeforeDate.year = 1;
    NSDate *selectDay = [[NSCalendar currentCalendar] dateByAddingComponents:BeforeDate toDate:self options:0];
    return selectDay;
}


/**
 向前一年
 */
- (NSDate *)orwardOneYear
{
    NSDateComponents *BeforeDate = [[NSDateComponents alloc] init];
    BeforeDate.year = -1;
    NSDate *selectDay = [[NSCalendar currentCalendar] dateByAddingComponents:BeforeDate toDate:self options:0];
    return selectDay;
}

/**
 一天的开始 yyyy-MM-dd 00:00:00
 */
- (NSDate *)dateAtStartOfDay
{
    NSDateComponents *components = [CURRENT_CALENDAR components:DATE_COMPONENTS fromDate:self];
    components.hour = 0;
    components.minute = 0;
    components.second = 0;
    return [CURRENT_CALENDAR dateFromComponents:components];
}






@end
