//
//  ZLViewProtccol.h
//  RACTest
//
//  Created by Mr.Zhang on 16/8/31.
//  Copyright © 2016年 lei.Zhang. All rights reserved.
//
@protocol ZLBaseViewModelProtcol;
@protocol ZLViewProtccol <NSObject>

/**
 *  设置View
 */
- (void)zl_setUpViews;

/**
 *  绑定viewModel
 */
- (void)zl_bindViewModel;


/**
 *  点击空白去除键盘
 */
- (void)zl_addReturnKeyBoard;


-(id)initWithViewModel:(id <ZLBaseViewModelProtcol>)viewModel;
@end
