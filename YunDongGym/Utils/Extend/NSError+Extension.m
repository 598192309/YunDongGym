//
//  NSError+Extension.m
//  FullShareTop
//
//  Created by lqq on 17/3/21.
//  Copyright © 2017年 FSB. All rights reserved.
//

#import "NSError+Extension.h"

@implementation NSError (Extension)


+(NSError*)errorWithMsg:(NSString*)msg
                 domain:(NSString *)domain
                   code:(NSInteger)code{
    if(msg==nil){
        msg=@"";
    }
    if(domain==nil){
        domain=@"";
    }
    return [NSError errorWithDomain:domain code:code userInfo:@{@"errorMsg":msg}];
}

-(NSString*)errorMsg{
    if ([self.userInfo isKindOfClass:[NSDictionary class]]) {
        id value = [self.userInfo objectForKey:@"errorMsg"];
        if (![value isKindOfClass:[NSNull class]]) {
            return value;
        }
    }
    
    return nil;
}




@end
