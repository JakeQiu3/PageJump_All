//
//  ThreeViewController.m
//  uuu
//
//  Created by qsyMac on 16/2/4.
//  Copyright © 2016年 QSY. All rights reserved.
//

#import "NextViewController.h"
#import "AppDelegate.h"
#import "ViewController.h"
@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"测试完毕";
    self.view.backgroundColor = [UIColor greenColor];
    NSLog(@"%@",NSStringFromCGRect(self.view.frame));
    //    设置下一个界面返回按钮
        UIBarButtonItem *backBtnItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(upPage)];
        self.navigationItem.leftBarButtonItem = backBtnItem;
    
    
}
//由于之前的控制器都被销毁了，故返回交互然并卵
- (void)upPage {
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
