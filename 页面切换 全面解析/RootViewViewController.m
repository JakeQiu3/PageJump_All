//
//  RootViewViewController.m
//  页面切换 全面解析
//
//  Created by 邱少依 on 16/2/5.
//  Copyright © 2016年 QSY. All rights reserved.
//

#import "RootViewViewController.h"
#import "TwoViewController.h"
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
    [btn setTitle:@"nextPage" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(push:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}


- (void)push:(UIButton *)btn {
    //    设置下一个界面返回按钮
    UIBarButtonItem *backBtnItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.backBarButtonItem = backBtnItem;
    
    TwoViewController *twoVC = [[TwoViewController alloc] init];
    [self.navigationController pushViewController:twoVC animated:YES];
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
