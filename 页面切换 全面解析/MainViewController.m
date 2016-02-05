//
//  MainViewController.m
//  页面切换 全面解析
//
//  Created by 邱少依 on 15/12/29.
//  Copyright © 2015年 QSY. All rights reserved.
//

#import "MainViewController.h"
#import "LoginViewController.h"
#import "UserInfoViewController.h"
@interface MainViewController ()<LoginViewControllerDelegate,UIActionSheetDelegate>
{
    UILabel *_loginInfo;
    UIBarButtonItem *_loginBtnItem;//右侧的button
    UIBarButtonItem *_meBtnItem;// 左侧的btn
    BOOL _isLogin;
}
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self addNavigationBar];
    [self addLoginInfo];
    // Do any additional setup after loading the view.
}
//设置导航条
- (void)addNavigationBar {
//创建一个导航栏
    UINavigationBar *navigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, 44)];
    [self.view addSubview:navigationBar];
//创建navigationItem
    UINavigationItem *navigationItem = [[UINavigationItem alloc] init];
    navigationItem.title = @"模态";
    
    _loginBtnItem = [[UIBarButtonItem alloc] initWithTitle:@"登录" style:UIBarButtonItemStylePlain target:self action:@selector(login:)];
    navigationItem.rightBarButtonItem = _loginBtnItem;
    
   _meBtnItem = [[UIBarButtonItem alloc] initWithTitle:@"我" style:UIBarButtonItemStylePlain target:self action:@selector(showInfo:)];
    navigationItem.leftBarButtonItem = _meBtnItem;
//navigationItem添加内容到导航栏
#warning 少 navigationitem是入站的操作
//  错误  [navigationBar addSubview:navigationItem];
    [navigationBar pushNavigationItem:navigationItem animated:NO];
   
}

- (void)addLoginInfo {
    _loginInfo =[[UILabel alloc]initWithFrame:CGRectMake(0, 100,320 ,30)];
    _loginInfo.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:_loginInfo];
}
//右按钮方法
- (void)login:(UIBarButtonItem *)btnItem {
    if (!_isLogin) {
        LoginViewController *loginVC = [[LoginViewController alloc] init];
        loginVC.delegate = self;
        loginVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        [self presentViewController:loginVC animated:YES completion:^{
        }];
        
    } else {//登录后
        UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"系统信息" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:@"注销" otherButtonTitles: nil];
        [actionSheet showInView:self.view];
        
    }
    
}

//左按钮方法
- (void)showInfo:(UIBarButtonItem *)btnItem {
    if (_isLogin) {
        UserInfoViewController *userInfoVC = [[UserInfoViewController alloc] init];
        userInfoVC.userInfo = _loginInfo.text;
        [self presentViewController:userInfoVC animated:YES completion:^{
            
        }];
    }
}

// 实现代理方法
- (void)loginViewShowUserName:(NSString *)userName {
    _isLogin = YES;
    _loginInfo.text = [NSString stringWithFormat:@"你好,我是%@",userName];
    _loginBtnItem.title = @"注销";
    _meBtnItem.enabled = YES;
    
}
// 实现代理方法
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (!buttonIndex) {//注销
        _isLogin = NO;
        _loginBtnItem.title = @"登录";
        _loginInfo.text = @"";
        _meBtnItem.enabled = NO;
    }
    
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
