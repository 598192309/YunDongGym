//
//  ThemeProvider.m
//  stock
//
//  Created by Lqq on 14-4-3.
//  Copyright (c) 2014年 Maxicn. All rights reserved.
//




#import "ThemeProvider.h"

@implementation ThemeProvider{
}
+ (ThemeProvider *)sharedInstance
{
    static dispatch_once_t t;
    static ThemeProvider *sharedInstance = nil;
    dispatch_once(&t, ^{
        sharedInstance = [[ThemeProvider alloc] init];
    });
    return sharedInstance;
}

-(id)init
{
    self=[super init];
    if(self){
        
    }
    return self;
}


- (void)configAppearance
{


}



@end
