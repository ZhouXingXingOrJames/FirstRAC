//
//  ZLBaseViewControllerProtocol.h
//  RACTest
//
//  Created by Mr.Zhang on 16/8/30.
//  Copyright © 2016年 lei.Zhang. All rights reserved.
//
#import <Foundation/Foundation.h>

@protocol ZLBaseViewControllerProtocol <NSObject>

@optional
/**
 *  添加视图
 */
- (void) zl_addSubViews;

/**
 *  绑定ViewModel
 */
- (void) zl_bindViewModel;


/**
 *  导航栏设置
 */
- (void) zl_navigationLayout;
@end
