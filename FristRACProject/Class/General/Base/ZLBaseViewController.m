//
//  ZLBaseViewController.m
//  RACTest
//
//  Created by Mr.Zhang on 16/8/30.
//  Copyright © 2016年 lei.Zhang. All rights reserved.
//

#import "ZLBaseViewController.h"

@implementation ZLBaseViewController
+ (instancetype) allocWithZone:(struct _NSZone *)zone{
    ZLBaseViewController *viewController = [super allocWithZone:zone];
    @weakify(viewController);
    [[viewController rac_signalForSelector:@selector(viewDidLoad)] subscribeNext:^(id x) {
        @strongify(viewController);
        [viewController zl_addSubViews];
        [viewController zl_bindViewModel];
        
    }];
    
    [[viewController rac_signalForSelector:@selector(viewWillAppear:)] subscribeNext:^(id x){
        @strongify(viewController);
        [viewController zl_navigationLayout];
    
    }];
    
    return viewController;
}
- (void) zl_addSubViews{};
- (void) zl_bindViewModel{};
- (void) zl_navigationLayout{};
@end
