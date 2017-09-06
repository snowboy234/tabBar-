//
//  One1ViewController.m
//  Dome
//
//  Created by 田伟 on 2017/9/6.
//  Copyright © 2017年 田伟. All rights reserved.
//

#import "One1ViewController.h"

@interface One1ViewController ()

@end

@implementation One1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton * center = [UIButton buttonWithType:UIButtonTypeCustom];
    [center setTitle:@"中2间" forState:UIControlStateNormal];
    center.titleLabel.textAlignment = NSTextAlignmentCenter;
    center.frame = CGRectMake((TWScreenWidth - 100) * 0.5, 0, 100, 44);
    self.navigationItem.titleView = center;
    self.view.backgroundColor = TWRandomColor;
}

@end
