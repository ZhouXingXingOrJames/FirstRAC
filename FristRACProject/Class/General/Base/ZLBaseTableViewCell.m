//
//  ZLBaseTableViewCell.m
//  RACTest
//
//  Created by Mr.Zhang on 16/8/31.
//  Copyright © 2016年 lei.Zhang. All rights reserved.
//

#import "ZLBaseTableViewCell.h"

@implementation ZLBaseTableViewCell
- (id) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self zl_setupViews];
        [self zl_bindViewModel];
    }
    return self;
}
- (void) zl_setupViews{};
- (void) zl_bindViewModel{};
@end
