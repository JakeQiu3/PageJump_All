//
//  WebChatViewController.m
//  页面切换 全面解析
//
//  Created by 邱少依 on 15/12/28.
//  Copyright © 2015年 QSY. All rights reserved.
//

#import "WebChatViewController.h"

@interface WebChatViewController ()

@end

@implementation WebChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    设置导航条的项目：文字，左右视图和返回视图
    self.navigationItem.title = @"friends";
    self.navigationItem.leftBarButtonItem = nil;
    self.navigationItem.rightBarButtonItem = nil;
    self.navigationItem.backBarButtonItem = nil;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// In a storyboard-based application, you will often want to do a little preparation before navigation
#warning 少一
// storyboard 中的页面设置跳转：根据segue的的名称来定
// [self performSegueWithIdentifier:@"" sender:self];
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    源视图控制器
    UITableViewController *settingCongroller = segue.sourceViewController;
//
    UITableViewController *tableviewController = segue.destinationViewController;
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
