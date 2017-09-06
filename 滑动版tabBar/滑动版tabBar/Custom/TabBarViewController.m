//
//  TabBarViewController.m
//  Dome
//
//  Created by 田伟 on 2017/9/6.
//  Copyright © 2017年 田伟. All rights reserved.
//

#import "TabBarViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"
#import "SmallViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    OneViewController * one = ({
        OneViewController * one = [[OneViewController alloc]init];
        one.title = @"One";
        one.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"第一个" image:[UIImage imageOriginalWithName:@"1"] selectedImage:[UIImage imageOriginalWithName:@"11"]];
        [one.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor yellowColor]} forState:UIControlStateNormal];
        one;
    });
    
    
    TwoViewController * two = ({
        TwoViewController * two = [[TwoViewController alloc]init];
        two.title = @"Two";
        two.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"第二个" image:[UIImage imageOriginalWithName:@"2"] selectedImage:[UIImage imageOriginalWithName:@"22"]];
        [two.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor yellowColor]} forState:UIControlStateNormal];
        two;
    });
    
    ThreeViewController * three = ({
        ThreeViewController * three = [[ThreeViewController alloc]init];
        three.title = @"Three";
        three.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"第三个" image:[UIImage imageOriginalWithName:@"3"] selectedImage:[UIImage imageOriginalWithName:@"33"]];
        [three.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor yellowColor]} forState:UIControlStateNormal];
        three;
    });
    
    FourViewController * four = ({
        FourViewController * four = [[FourViewController alloc]init];
        four.title = @"Four";
        four.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"第四个" image:[UIImage imageOriginalWithName:@"4"] selectedImage:[UIImage imageOriginalWithName:@"44"]];
        [four.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor yellowColor]} forState:UIControlStateNormal];
        four;
    });
    // 设置tabBar背景颜色
    [[UITabBar appearance] setBarTintColor:[UIColor orangeColor]];
    
    // 取消tabBar自带的透明效果
    [UITabBar appearance].translucent = NO;
    
    // 设置选中后的文字颜色
    self.tabBar.tintColor = [UIColor redColor];
    
    self.viewControllers = @[
                             [[SmallViewController alloc] initWithRootViewController:one],
                             [[SmallViewController alloc]initWithRootViewController:two],
                             [[SmallViewController alloc]initWithRootViewController:three],
                             [[SmallViewController alloc]initWithRootViewController:four]
                             ];
}


@end
