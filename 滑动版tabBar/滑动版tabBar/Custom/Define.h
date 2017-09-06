//
//  Define.h
//  EatFruit
//
//  Created by 田伟 on 2017/8/11.
//  Copyright © 2017年 田伟. All rights reserved.
//

#ifndef Define_h
#define Define_h

// MARK:- 屏幕高宽
#define TWScreenWidth [UIScreen mainScreen].bounds.size.width
#define TWScreenHeight [UIScreen mainScreen].bounds.size.height

// MARK:- 颜色
#define TWRandomColor [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:1.0]
#define TWColorRGBA(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define TWColorRGB(r,g,b) TWColorRGBA(r,g,b,1.0)
#define ViewControllerBgColor TWColorRGB(45, 47, 78)

// 主色调
#define TWBaseColor TWColorRGB(18, 121, 188)

// MARK:- 字体
#define TWTextFont(fontSize) [UIFont fontWithName:@"2203" size:(fontSize)]             // 空心字体
#define TWTextFont1(fontSize) [UIFont fontWithName:@"22203" size:(fontSize)]

// MARK:- 打印
#ifdef DEBUG
#define TWLog(format, ...) NSLog((@"[文件名:%s]" "[函数名:%s]" "[行号:%d]" format), __FILE__, __FUNCTION__, __LINE__, ##__VA_ARGS__);
#define TWLogFunc TWLog(@"%s",__func__);
#else
#define TWLog(...)
#define TWLogFunc
#endif

// MARK:- 通知
#define TabBarButtonDidRepeatClickNotification @"TabBarButtonDidRepeatClickNotification"      // 双击了底部的tabbar

#endif /* Define_h */
