//
//  LiveModel.m
//  BBKJ
//
//  Created by Mr.Zhang on 16/6/28.
//  Copyright © 2016年 GK. All rights reserved.
//

#import "LiveModel.h"

@implementation LiveModel

@end
@implementation AllClassModel
+(JSONKeyMapper *)keyMapper{
    return [[JSONKeyMapper alloc]initWithDictionary:@{@"id":@"fid"}];
}
@end