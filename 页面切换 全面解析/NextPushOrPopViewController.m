//
//  NextPushOrPopViewController.m
//  页面切换 全面解析
//
//  Created by 邱少依 on 16/2/5.
//  Copyright © 2016年 QSY. All rights reserved.
//

#import "NextPushOrPopViewController.h"

@interface NextPushOrPopViewController ()

@end

@implementation NextPushOrPopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"第3个界面";
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(100, 100, 100, 50);
    [btn setTitle:@"upPage" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(pop:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}
- (void)pop:(UIButton *)btn {
    [self.navigationController popViewControllerAnimated:YES];
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
