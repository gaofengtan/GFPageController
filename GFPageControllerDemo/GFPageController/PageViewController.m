//
//  PageViewController.m
//  GFPageController
//
//  Created by 谭高丰 on 2017/4/13.
//  Copyright © 2017年 谭高丰. All rights reserved.
//

#import "PageViewController.h"

@interface PageViewController ()

@end

@implementation PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureContentView];
}

- (void)configureContentView {
    NSArray *titles             = @[@"8:00",@"10:00",@"12:00",@"14:00",@"16:00",@"18:00",@"20:00"];
    NSArray *subTitles          = @[@"已结束",@"已结束",@"已结束",@"疯抢中",@"即将开始",@"即将开始",@"即将开始"];
    NSMutableArray *controllers = [NSMutableArray new];
    for (int i = 0; i < 7; i ++) {
        UIViewController *vc    = [[UIViewController alloc] init];
        vc.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1.0f];
        [controllers addObject:vc];
    }
    
    // 设置控制器数组
    self.controllers = controllers;
    // 设置标题数组
    self.titles      = titles;
    // 设置副标题数组
    self.subTitles   = subTitles;
    // 设置初始下标
    self.selectIndex = 1;
    // 设置菜单的纵坐标（基于当前的屏幕大小）
    self.menuY       = 0;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
