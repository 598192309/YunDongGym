//
//  UIViewController+Extension.h
//  FullShareTop
//
//  Created by lqq on 17/3/21.
//  Copyright © 2017年 FSB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Extension)
- (void)setBackButton;
- (void)setCancelButton;
- (void)setGoBackOrDismissButtonAuto;
-(void)dismissAutomatically;

-(void)popViewControllerAnimated;

-(void)setLeftBarButtonWithImageName:(NSString *)imageName target:(id)aTarget action:(SEL)aAction;
-(void)setRightBarButtonWithImageName:(NSString *)imageName target:(id)aTarget action:(SEL)aAction;
-(void)setRightBarButtonWithTitle:(NSString *)title target:(id)aTarget action:(SEL)aAction;


- (void)popSelfDelayTime:(CGFloat)delayTime;

@end
