//
//  LearingViewController.m
//  RACTest
//
//  Created by Mr.Zhang on 16/8/30.
//  Copyright © 2016年 lei.Zhang. All rights reserved.
//

#import "LearingViewController.h"
#import "LearView.h"
@interface LearingViewController ()
@property (nonatomic,strong) LearView *mainView;
@end

@implementation LearingViewController
- (LearView *)mainView{
    
    if (!_mainView) {
        _mainView = [[LearView alloc] init];
    }
    return _mainView;

}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void) updateViewConstraints{
    
    [self.mainView mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.mas_equalTo(0.f);
        make.left.mas_equalTo(0.f);
        make.right.mas_equalTo(0.f);
        make.bottom.mas_equalTo(0.f);
        
    }];
    [super updateViewConstraints];

}
- (void) zl_addSubViews{
    [self.view addSubview:self.mainView];
}
- (void) zl_navigationLayout{

    self.title = @"学习";
}
@end
