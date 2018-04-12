//
//  NSFileManager+Extension.h
//  XOne_iPhone
//
//  Created by victor on 13-5-7.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager(Extension)

/* allFilesOfDirectoryAtPath:error: returns an NSArray of NSStrings representing the filenames in full path format of the items in the directory. If this method returns 'nil', an NSError will be returned by reference in the 'error' parameter. If the directory contains no items, this method will return the empty array.
 */
+ (NSArray *)allFilesOfDirectoryAtPath:(NSString *)path error:(NSError **)error NS_AVAILABLE(10_5, 2_0);

+ (BOOL)addSkipBackupAttributeToItemAtPath:(NSString *)aPath;

- (BOOL)createDirectoryAtPath:(NSString *)path withIntermediateDirectories:(BOOL)createIntermediates attributes:(NSDictionary *)attributes error:(NSError **)error backup2iCloud:(BOOL)backup NS_AVAILABLE(10_5, 2_0);
@end
