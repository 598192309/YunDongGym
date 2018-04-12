//
//  UIImage+Extension.h
//  FullShareTop
//
//  Created by lqq on 17/3/21.
//  Copyright © 2017年 FSB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)

/**
 根据颜色 和 size 制作图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;


/**
 渲染成原图
 */
+ (UIImage *)originImageWithImageName:(NSString *)imageName;


/**
 View生成图片
 */
+ (UIImage*) imageWithUIView:(UIView*) view;



/**
 ScrollView生成图片
 */
+ (UIImage*)getCaptureWithScrollView:(UIScrollView *)scrollView;

/**
 拼接图片
 */
+ (UIImage *) combineWithTopImg:(UIImage*)topImage bottomImg:(UIImage*)bottomImage withMargin:(NSInteger)margin;




#pragma mark - compress
- (UIImage *)compressedImage;
- (CGFloat)compressionQuality;
- (NSData *)compressedData;
- (NSData *)compressedData:(CGFloat)compressionQuality;

#pragma mark - fixOrientation
- (UIImage *)fixOrientation;

#pragma mark - rotate & resize
- (UIImage *)imageAtRect:(CGRect)rect;
- (UIImage *)imageByScalingProportionallyToMinimumSize:(CGSize)targetSize;
- (UIImage *)imageByScalingProportionallyToSize:(CGSize)targetSize;
- (UIImage *)imageByScalingToSize:(CGSize)targetSize;
- (UIImage *)imageRotatedByRadians:(CGFloat)radians;
- (UIImage *)imageRotatedByDegrees:(CGFloat)degrees;
- (UIImage *)horizontalFlip;
- (UIImage *)verticalFlip;
@end
