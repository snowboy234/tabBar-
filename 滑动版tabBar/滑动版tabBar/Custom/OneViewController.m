//
//  OneViewController.m
//  Dome
//
//  Created by 田伟 on 2017/9/6.
//  Copyright © 2017年 田伟. All rights reserved.
//

#import "OneViewController.h"
#import "One1ViewController.h"
#import "One2ViewController.h"

@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = TWRandomColor;
    
    UIButton * center = [UIButton buttonWithType:UIButtonTypeCustom];
    [center setTitle:@"中1间" forState:UIControlStateNormal];
    [center sizeToFit];
    self.navigationItem.titleView = center;
    
    UIButton * left = [UIButton buttonWithType:UIButtonTypeCustom];
    [left setTitle:@"模态跳转" forState:UIControlStateNormal];
    [left sizeToFit];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:left];
    [left addTarget:self action:@selector(leftClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton * right = [UIButton buttonWithType:UIButtonTypeCustom];
    [right setTitle:@"导航跳转" forState:UIControlStateNormal];
    [right sizeToFit];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:right];
    [right addTarget:self action:@selector(rightClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)rightClick{
    One1ViewController * o1 = [[One1ViewController alloc]init];
    [self.navigationController pushViewController:o1 animated:YES];
}

- (void)leftClick{
    One2ViewController * o2 = [[One2ViewController alloc]init];
    [self presentViewController:o2 animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
