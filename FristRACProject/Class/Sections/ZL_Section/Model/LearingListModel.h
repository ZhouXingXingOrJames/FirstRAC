//
//  LearingListModel.h
//  BBKJ
//
//  Created by Mr.Zhang on 16/6/28.
//  Copyright © 2016年 GK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"

@interface LearingListModel : JSONModel
@property (nonatomic,strong) NSNumber <Optional>*bookID;//文章ID
@property (nonatomic,copy) NSString <Optional>*title;//标题
@property (nonatomic,strong) NSNumber <Optional>*clickTimes;//点击次数
@property (nonatomic,copy) NSString <Optional>*publishAt;//发布时间
@property (nonatomic,strong) NSNumber <Optional>*typeId;
@property (nonatomic,copy) NSString <Optional>*typeName;//类型
@property (nonatomic,strong) NSArray <Optional>*images;//图片数组
@property (nonatomic,copy) NSString <Optional>*displayStyle;//显示样式
@property (nonatomic,copy) NSString <Optional>*detailUrl;

@end
