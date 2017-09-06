//
//  SmallViewController.m
//  转场
//
//  Created by 田伟 on 2017/9/6.
//  Copyright © 2017年 田伟. All rights reserved.
//

#import "SmallViewController.h"

@interface SmallViewController ()

@end

@implementation SmallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置导航栏的背景颜色
    [UINavigationBar appearance].barTintColor = [UIColor orangeColor];
    // 设置字体颜色
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    if (self.childViewControllers.count > 0) {
        // 1统一设置返回按钮修改样式
        UIButton * backButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [backButton setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
        backButton.frame = CGRectMake(0, 0, 30, 30);
        [backButton setContentEdgeInsets:UIEdgeInsetsMake(0, -30, 0, 0)];
        [backButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:backButton];
        
        // 注：无法关闭关闭底部的tabBar
        
//        self.parentViewController.hidesBottomBarWhenPushed = YES;
    }
    // 真正在跳转
    [super pushViewController:viewController animated:animated];
}

- (void)back{
    [self popViewControllerAnimated:YES];
}


@end
