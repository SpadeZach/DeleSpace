//
//  DeleSpaceAndLineReturn.h
//  VJSP
//
//  Created by 赵博 on 2017/8/4.
//  Copyright © 2017年 VJSP_LXB. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DeleSpaceAndLineReturn : NSObject

/**
 Remove leading and trailing Spaces

 @param content Need to deal with the text
 @return NSString
 */

+ (NSString *)deleSpaceAndLineReturn:(NSString *)content;
@end
