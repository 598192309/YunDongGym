//
//  NSUUID+Extension.m
//  FullShareTop
//
//  Created by lqq on 2017/8/8.
//  Copyright © 2017年 FSB. All rights reserved.
//

#import "NSUUID+Extension.h"
#import <SAMKeychain.h>


#define KeyChainService  [NSBundle mainBundle].bundleIdentifier
#define KeyChainAccount  @"FSBCount"

@implementation NSUUID (Extension)
- (NSString *)udidString
{
    static NSString *uuid;
    if (uuid) {
        return uuid;
    }
    uuid = [SAMKeychain passwordForService:KeyChainService account:KeyChainAccount];
    if (!uuid) {
        uuid = [self UUIDString];
        if (!uuid) {
            return @"";
        }
        [SAMKeychain setPassword:uuid forService:KeyChainService account:KeyChainAccount];
        NSLog(@"产生一个新的UUID：%@",uuid);
    } else {
        NSLog(@"使用以往的的UUID：%@",uuid);
    }
    
    NSLog(@"%@",uuid);
    return uuid;
}
@end
