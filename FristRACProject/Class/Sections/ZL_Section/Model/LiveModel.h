//
//  LiveModel.h
//  BBKJ
//
//  Created by Mr.Zhang on 16/6/28.
//  Copyright © 2016年 GK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"
@interface LiveModel : JSONModel
@property (nonatomic,copy) NSString <Optional>*title;
@property (nonatomic,copy) NSString <Optional>*detailUrl;
@end
@interface AllClassModel : JSONModel
@property (nonatomic,strong) NSNumber <Optional>*fid;
@property (nonatomic,copy) NSString <Optional>*name;
@end