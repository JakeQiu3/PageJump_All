//
//  NavigationPushOrPopViewController.m
//  页面切换 全面解析
//
//  Created by 邱少依 on 16/2/5.
//  Copyright © 2016年 QSY. All rights reserved.
//

#import "MainPushOrPopViewController.h"
#import "NextPushOrPopViewController.h"
@interface MainPushOrPopViewController ()

@end

@implementation MainPushOrPopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"第2个界面";
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(100, 100, 100, 50);
    [btn setTitle:@"nextPage" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(push:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

- (void)push:(UIButton *)btn {
//    设置下一个界面返回按钮
    UIBarButtonItem *backBtnItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.backBarButtonItem = backBtnItem;
    
    NextPushOrPopViewController *nextPushOrPop = [[NextPushOrPopViewController alloc] init];
    [self.navigationController pushViewController:nextPushOrPop animated:YES];
}

@end
