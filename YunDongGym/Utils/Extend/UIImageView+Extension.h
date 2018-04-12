//
//  UIImageView+Extension.h
//  FullShareTop
//
//  Created by lqq on 17/3/21.
//  Copyright © 2017年 FSB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (Extension)
/**
 根据颜色渲染图片
 */
- (void)setImageWithName:(NSString *)imageName renderingImageWithColor:(UIColor *)color;

@end
