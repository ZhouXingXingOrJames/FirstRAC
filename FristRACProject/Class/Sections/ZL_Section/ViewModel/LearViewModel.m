//
//  LearViewModel.m
//  RACTest
//
//  Created by Mr.Zhang on 16/8/31.
//  Copyright © 2016年 lei.Zhang. All rights reserved.
//

#import "LearViewModel.h"

@implementation LearViewModel
- (NSArray *)dateArray{
    
    if (!_dateArray) {
        _dateArray = [NSArray array];
    }
    return _dateArray;
}
- (RACSubject *)cellSubject{

    if (!_cellSubject) {
        _cellSubject = [RACSubject subject];
    }
    return _cellSubject;
}


- (void)zl_initialize{

    self.dateArray = @[
                       @"Animation",
                       @"weaterPhoto",
                       @"CABaseAnimation",
                       @"核心动画"
                       ];

}
@end
