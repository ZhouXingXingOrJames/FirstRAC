//
//  ZLBaseNavigationViewController.m
//  RACTest
//
//  Created by Mr.Zhang on 16/8/30.
//  Copyright © 2016年 lei.Zhang. All rights reserved.
//

#import "ZLBaseNavigationViewController.h"

@interface ZLBaseNavigationViewController ()

@end

@implementation ZLBaseNavigationViewController

/**
 *  是否支持屏幕旋转
 *
 *  @return YES or NO
 */
- (BOOL)shouldAutorotate{
    return YES;
}
- (UIInterfaceOrientationMask)supportedInterfaceOrientations{

    return [self.viewControllers.lastObject supportedInterfaceOrientations];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{///一开始旋转的方向

    return [self.viewControllers.lastObject preferredInterfaceOrientationForPresentation];
}
- (UIViewController *)childViewControllerForStatusBarStyle{
    return self.topViewController;
}
@end
