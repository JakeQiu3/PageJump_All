//
//  UserInfoViewController.m
//  页面切换 全面解析
//
//  Created by 邱少依 on 15/12/29.
//  Copyright © 2015年 QSY. All rights reserved.
//

#import "UserInfoViewController.h"

@interface UserInfoViewController ()

@end

@implementation UserInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUI];
    // Do any additional setup after loading the view.
}
- (void)setUI {
    //信息显示标签
  UILabel *lbUserInfo =[[UILabel alloc]initWithFrame:CGRectMake(0, 100,320 ,30)];
    lbUserInfo.textAlignment=NSTextAlignmentCenter;
    lbUserInfo.textColor=[UIColor colorWithRed:23/255.0 green:180/255.0 blue:237/255.0 alpha:1];
    [self.view addSubview:lbUserInfo];
    
    //关闭按钮
    UIButton *btnClose=[UIButton buttonWithType:UIButtonTypeSystem];
    btnClose.frame=CGRectMake(110, 200, 100, 30);
    [btnClose setTitle:@"关闭" forState:UIControlStateNormal];
    [btnClose addTarget:self action:@selector(close) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnClose];
    
    //设置传值信息
    lbUserInfo.text = _userInfo;
}

- (void)close {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}
@end
