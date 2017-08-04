//
//  DeleSpaceAndLineReturn.m
//  VJSP
//
//  Created by 赵博 on 2017/8/4.
//  Copyright © 2017年 VJSP_LXB. All rights reserved.
//

#import "DeleSpaceAndLineReturn.h"

@implementation DeleSpaceAndLineReturn
+ (NSString *)deleSpaceAndLineReturn:(NSString *)content{
    //去掉首尾空格
    content = [content stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    
    NSInteger sign = [content length];
    //遍历字符
    for (int i = 0; i < sign; i++) {
        //第一位
        NSString *firstStr = [content substringToIndex:1];
        //第一位 是换行符与空格
        if ([firstStr isEqualToString:@"\n"] || [firstStr isEqualToString:@" "]) {
            //截取掉前面第一位保留后面
            content = [content substringFromIndex:1];
        }
        
    }
    NSInteger signLast = [content length];
    //遍历字符
    for (int i = 0; i < signLast; i++) {
        //最后一位
        NSString *lastStr = [content substringFromIndex:[content length] - 1];
        //最后一位 是换行符与空格
        if ([lastStr isEqualToString:@"\n"] || [lastStr isEqualToString:@" "]) {
            //截取掉前面第一位保留后面
            content = [content substringToIndex:[content length] - 1];
        }
        
    }
    return content;
}

@end
