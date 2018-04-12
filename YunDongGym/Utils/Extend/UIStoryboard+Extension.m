//
//  UIStoryboard+Extension.m
//  FullShareTop
//
//  Created by lqq on 17/3/29.
//  Copyright © 2017年 FSB. All rights reserved.
//

#import "UIStoryboard+Extension.h"

@implementation UIStoryboard (Extension)
/**
 根据 storyBoardName 和 storyBoard里控制器的storyBoardIdentify 获取对应的控制器
 */
+ (id)controllerWithStoryBoardIdentify:(NSString *)storyBoardIdentify inStoryBoard:(NSString *)storyBoardName
{
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:storyBoardName bundle:nil];
    UIViewController *VC = [storyBoard instantiateViewControllerWithIdentifier:storyBoardIdentify];
    return VC;
}
@end
