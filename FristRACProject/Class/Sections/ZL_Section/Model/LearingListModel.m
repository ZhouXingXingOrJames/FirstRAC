//
//  LearingListModel.m
//  BBKJ
//
//  Created by Mr.Zhang on 16/6/28.
//  Copyright © 2016年 GK. All rights reserved.
//

#import "LearingListModel.h"

@implementation LearingListModel
+(JSONKeyMapper *)keyMapper{
    return [[JSONKeyMapper alloc]initWithDictionary:@{@"id":@"bookID"}];
}
@end
