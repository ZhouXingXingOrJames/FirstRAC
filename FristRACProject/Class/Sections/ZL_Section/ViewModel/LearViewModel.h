//
//  LearViewModel.h
//  RACTest
//
//  Created by Mr.Zhang on 16/8/31.
//  Copyright © 2016年 lei.Zhang. All rights reserved.
//

#import "ZLBaseViewModel.h"

@interface LearViewModel : ZLBaseViewModel
@property (nonatomic,strong) NSArray *dateArray;
@property (nonatomic,strong) RACSubject *cellSubject;
@end
