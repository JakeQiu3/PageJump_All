//
//  RootViewViewController.m
//  页面切换 全面解析
//
//  Created by 邱少依 on 16/2/5.
//  Copyright © 2016年 QSY. All rights reserved.
//

#import "RootViewViewController.h"
#import "NextViewController.h"
@interface RootViewViewController ()

@end

@implementation RootViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
// 这种操作后，此时的keyWindow是appdelegate创建的那个window，故把self指针指向该window的rootViewController，也就销毁了之前设置的rootViewController和栈内的所有的vc，只剩下self.window视图了。
//    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
//    keyWindow.rootViewController = self;
// self.view.window为空，故把该控制器指针置nil。也就是销毁了该控制器，剩下显示的是window界面；但并不影响其他的VC。
//    self.view.window.rootViewController = self;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(100, 100, 100, 50);
    [btn setTitle:@"测试" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(push:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}


- (void)push:(UIButton *)btn {
    //    设置下一个界面返回按钮
//    UIBarButtonItem *backBtnItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
//    self.navigationItem.backBarButtonItem = backBtnItem;
    
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"选择" message:nil delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [alert show];
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex) {//点击确定：跳转到新的界面
        NextViewController *threeBar = [[NextViewController alloc] init];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:threeBar];
        self.view.window.rootViewController = nav;
        NSLog(@"%@。。。。。。。%@========   =%@",self.view.window.rootViewController,[UIApplication sharedApplication].windows,[UIApplication sharedApplication].keyWindow);
        
        //        UIWindow *keywindow = [[UIApplication sharedApplication].windows lastObject];
        //        keywindow.rootViewController = threeBar;
        //        [UIApplication sharedApplication].keyWindow.rootViewController = threeBar;
        //    打印keywindow： <_UIAlertControllerShimPresenterWindow: 0x7fe22493bf60; frame = (0 0; 414 736); opaque = NO; autoresize = W+H; gestureRecognizers = <NSArray: 0x7fe224933550>; layer = <UIWindowLayer: 0x7fe224936910>>
    }
}

@end
