//
//  BaseTableViewController.m
//  FullShareTop
//
//  Created by lqq on 17/3/21.
//  Copyright © 2017年 FSB. All rights reserved.
//

#import "BaseTableViewController.h"

@interface BaseTableViewController ()

@end

@implementation BaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _isFirstViewDidAppear=YES;
//    [self setGoBackOrDismissButtonAuto];
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    _isVisible = YES;
    
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    _isFirstViewDidAppear=NO;
}


- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    _isVisible = NO;
}

@end
