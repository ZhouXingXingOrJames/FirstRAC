//
//  ZLBaseViewModel.m
//  RACTest
//
//  Created by Mr.Zhang on 16/8/31.
//  Copyright © 2016年 lei.Zhang. All rights reserved.
//

#import "ZLBaseViewModel.h"
@implementation ZLBaseViewModel
+ (instancetype) allocWithZone:(struct _NSZone *)zone{

    ZLBaseViewModel *baseViewModel = [super allocWithZone:zone];
    if (baseViewModel) {
        
        [baseViewModel zl_initialize];
    }
    return baseViewModel;

}
- (void) zl_initialize{};
@end
