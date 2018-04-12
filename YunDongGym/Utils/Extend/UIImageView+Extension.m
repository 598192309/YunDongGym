//
//  UIImageView+Extension.m
//  FullShareTop
//
//  Created by lqq on 17/3/21.
//  Copyright © 2017年 FSB. All rights reserved.
//

#import "UIImageView+Extension.h"

@implementation UIImageView (Extension)
/**
 根据颜色渲染图片
 */
- (void)setImageWithName:(NSString *)imageName renderingImageWithColor:(UIColor *)color
{
    UIImage *image = [UIImage imageNamed:imageName];
    self.image  =[image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    self.tintColor = color;
}
@end
