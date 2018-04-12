//
//  UIViewController+Extension.m
//  FullShareTop
//
//  Created by lqq on 17/3/21.
//  Copyright © 2017年 FSB. All rights reserved.
//

#import "UIViewController+Extension.h"
#import "UIImage+Extension.h"
@implementation UIViewController (Extension)

-(void)setGoBackOrDismissButtonAuto
{
    if([self.navigationController.viewControllers count]>1){
        [self setBackButton];
    }else{
        [self setCancelButton];
    }
}

-(void)dismissAutomatically
{
    if([self.navigationController.viewControllers count]>1){
        [self.navigationController popViewControllerAnimated:YES];
    }else{
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

-(void)setBackButton
{
    if (self.navigationController.viewControllers.count < 2) {
        return;
    }
    [self setLeftBarButtonWithImageName:@"ic_back_litter" target:self action:@selector(popViewControllerAnimated)];
}

-(void)setLeftBarButtonWithImageName:(NSString *)imageName target:(id)aTarget action:(SEL)aAction
{

    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithImage:[UIImage originImageWithImageName:imageName] style:UIBarButtonItemStyleDone target:aTarget action:aAction];
    self.navigationItem.leftBarButtonItem = item;
}


-(void)setRightBarButtonWithImageName:(NSString *)imageName target:(id)aTarget action:(SEL)aAction
{
    UIButton *customBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [customBtn setImage:[UIImage originImageWithImageName:imageName] forState:UIControlStateNormal];
    customBtn.frame = CGRectMake(0, 0, 44, 44);
    [customBtn addTarget:aTarget action:aAction forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftButtonItem = [[UIBarButtonItem alloc] initWithCustomView:customBtn];
    if ([[[ UIDevice currentDevice ] systemVersion ] floatValue ]>= 7.0)
    {
        UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem : UIBarButtonSystemItemFixedSpace target:nil action:nil];
        negativeSpacer. width = - 11 ;//这个数值可以根据情况自由变化
        self.navigationItem.rightBarButtonItems = @[ negativeSpacer, leftButtonItem ] ;
        
    } else {
        self.navigationItem.leftBarButtonItem = leftButtonItem;
    }
}

-(void)setRightBarButtonWithTitle:(NSString *)title target:(id)aTarget action:(SEL)aAction
{
  
}
-(void)setCancelButton
{
    UIBarButtonItem *leftButtonItem =[[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"bar_icon_close"] style:UIBarButtonItemStylePlain target:self action:@selector(dismissModalViewController)];
    self.navigationItem.leftBarButtonItem = leftButtonItem;
}



-(void)popViewControllerAnimated
{
    [self selfWillPop];
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)dismissModalViewController
{
    [self selfWillPop];
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)selfWillPop{
    
}


- (void)popSelfDelayTime:(CGFloat)delayTime
{
    __weak __typeof (self)weakSelf = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSMutableArray *marr = [[NSMutableArray alloc]initWithArray:weakSelf.navigationController.viewControllers];
        [marr removeObject:weakSelf];
        weakSelf.navigationController.viewControllers = marr;
    });
}
@end
