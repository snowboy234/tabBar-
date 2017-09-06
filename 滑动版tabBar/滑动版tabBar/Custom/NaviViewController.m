//
//  NaviViewController.m
//  Dome
//
//  Created by 田伟 on 2017/9/6.
//  Copyright © 2017年 田伟. All rights reserved.
//

#import "NaviViewController.h"

@interface NaviViewController ()

@end

@implementation NaviViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置导航栏的背景颜色
    [UINavigationBar appearance].barTintColor = [UIColor orangeColor];
    
    // 设置字体颜色
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
