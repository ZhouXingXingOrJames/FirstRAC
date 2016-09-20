//
//  ZLBaseView.m
//  RACTest
//
//  Created by Mr.Zhang on 16/8/31.
//  Copyright © 2016年 lei.Zhang. All rights reserved.
//

#import "ZLBaseView.h"
#import "AppDelegate.h"
@implementation ZLBaseView
- (id) init{
    self = [super init];
    if (self) {
        
        [self zl_setUpViews];
        [self zl_bindViewModel];
    }
    return self;
}

- (id) initWithViewModel:(id<ZLBaseViewModelProtcol>)viewModel{
    self = [super init];
    if (self) {
        
        [self zl_setUpViews];
        [self zl_bindViewModel];
    }
    return self;

}
- (void) zl_setUpViews{};
- (void) zl_bindViewModel{};

- (void) zl_addReturnKeyBoard{
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
    [tap.rac_gestureSignal subscribeNext:^(id x) {
        AppDelegate *appdelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
        [appdelegate.window endEditing:YES];//取消Window上所有编辑键盘
        
    }];
    
    [self addGestureRecognizer:tap];
}
@end
