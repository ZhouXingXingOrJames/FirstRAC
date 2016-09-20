//
//  LearingViewController.m
//  RACTest
//
//  Created by Mr.Zhang on 16/8/30.
//  Copyright © 2016年 lei.Zhang. All rights reserved.
//

#import "LearingViewController.h"
#import "LearView.h"
#import "LearViewModel.h"
@interface LearingViewController ()
@property (nonatomic,strong) LearView *mainView;
@property (nonatomic,strong) LearViewModel *learModel;
@end

@implementation LearingViewController

- (LearView *)mainView{
    
    if (!_mainView) {
        _mainView = [[LearView alloc] initWithViewModel:self.learModel];
    }
    return _mainView;

}
- (LearViewModel *)learModel{

    if (!_learModel) {
        _learModel = [[LearViewModel alloc] init];
    }
    return _learModel;
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
- (void)zl_bindViewModel{

    @weakify(self);
    [[self.learModel.cellSubject takeUntil:self.rac_willDeallocSignal] subscribeNext:^(id x) {
        @strongify(self);
        UIViewController *VC = [[UIViewController alloc] init];
        VC.view.backgroundColor = [UIColor redColor];
        [self.navigationController pushViewController:VC animated:YES];
        
    }];
}
@end
