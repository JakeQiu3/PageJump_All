//
//  ToViewController.m
//  uuu
//
//  Created by qsyMac on 16/2/4.
//  Copyright © 2016年 QSY. All rights reserved.
//

#import "TwoViewController.h"
#import "ThreeViewController.h"

@interface TwoViewController ()<UIAlertViewDelegate>

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 50);
    [btn setTitle:@"测试" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(push:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)push:(UIButton *)btn  {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"选择" message:nil delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex) {//点击确定：跳转到新的界面
        ThreeViewController *threeBar = [[ThreeViewController alloc] init];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:threeBar];
        self.view.window.rootViewController = nav;
        NSLog(@"%@。。。。。。。%@=========%@",self.view.window.rootViewController,[UIApplication sharedApplication].windows,[UIApplication sharedApplication].keyWindow);
        
//        UIWindow *keywindow = [[UIApplication sharedApplication].windows lastObject];
//        keywindow.rootViewController = threeBar;
//        [UIApplication sharedApplication].keyWindow.rootViewController = threeBar;
//    打印keywindow： <_UIAlertControllerShimPresenterWindow: 0x7fe22493bf60; frame = (0 0; 414 736); opaque = NO; autoresize = W+H; gestureRecognizers = <NSArray: 0x7fe224933550>; layer = <UIWindowLayer: 0x7fe224936910>>
    }
}

@end
