//
//  LearView.m
//  RACTest
//
//  Created by Mr.Zhang on 16/8/31.
//  Copyright © 2016年 lei.Zhang. All rights reserved.
//

#import "LearView.h"
#import "LearViewModel.h"

@interface LearView()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *table;
@property (nonatomic,strong) LearViewModel *viewModel;
@end
@implementation LearView
- (id) initWithViewModel:(id<ZLBaseViewModelProtcol>)viewModel{
    
    self.viewModel = (LearViewModel *)viewModel;
    return [super initWithViewModel:viewModel];

}
- (UITableView *)table{
    
    if (!_table) {
        _table = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _table.delegate = self;
        _table.dataSource = self;

    }
    return _table;
}
- (LearViewModel *)viewModel{

    if (!_viewModel) {
        _viewModel = [[LearViewModel alloc] init];
    }
    return _viewModel;
    
}

- (void)zl_setUpViews{

    [self addSubview:self.table];
    [self updateConstraintsIfNeeded];
    [self setNeedsUpdateConstraints];
}
//更新约束  重写系统方法
- (void)updateConstraints{

    [self.table mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(0);
        make.left.mas_equalTo(0.f);
        make.right.mas_equalTo(0.f);
        make.bottom.mas_equalTo(0.f);
    }];
    [super updateConstraints];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.viewModel.dateArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *identifi = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifi];
    if(!cell){
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifi];
    
    }
    cell.textLabel.text = self.viewModel.dateArray[indexPath.row];
    return cell;
}
- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    [self.viewModel.cellSubject sendNext:nil];
}
@end
