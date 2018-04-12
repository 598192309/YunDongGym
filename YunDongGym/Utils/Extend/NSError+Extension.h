//
//  NSError+Extension.h
//  FullShareTop
//
//  Created by lqq on 17/3/21.
//  Copyright © 2017年 FSB. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSError (Extension)


+(NSError*)errorWithMsg:(NSString*)msg
                 domain:(NSString *)domain
                   code:(NSInteger)code;

-(NSString*)errorMsg;


@end
