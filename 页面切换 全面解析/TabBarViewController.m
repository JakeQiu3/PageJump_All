//
//  TabBarViewController.m
//  页面切换 全面解析
//
//  Created by 邱少依 on 15/12/28.
//  Copyright © 2015年 QSY. All rights reserved.
//

#import "TabBarViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FirstViewController *firstVc = [[FirstViewController alloc] init];
//    self.view执行创建视图viewDidLoad
//    firstVc.view.backgroundColor = [UIColor whiteColor];
    firstVc.tabBarItem.title = @"第一个";
    firstVc.tabBarItem.image = [UIImage imageNamed:@"1-1@2x"];
    firstVc.tabBarItem.selectedImage = [UIImage imageNamed:@"1-1"];
    firstVc.tabBarItem.badgeValue = @"";
    UINavigationController *firstNav = [[UINavigationController alloc] initWithRootViewController:firstVc];
    
    
    SecondViewController *secondVc = [[SecondViewController alloc] init];
//    secondVc.view.backgroundColor = [UIColor grayColor];
    secondVc.tabBarItem.title = @"第二个";
    secondVc.tabBarItem.image = [UIImage imageNamed:@"1-1@2x"];
    secondVc.tabBarItem.selectedImage = [UIImage imageNamed:@"1-1"];
    secondVc.tabBarItem.badgeValue = @"12";
    UINavigationController *secondNav = [[UINavigationController alloc] initWithRootViewController:secondVc];
    
    ThirdViewController *thirdVc = [[ThirdViewController alloc] init];
//    thirdVc.view.backgroundColor = [UIColor lightGrayColor];
    thirdVc.tabBarItem.title = @"第三个";
    thirdVc.tabBarItem.image = [UIImage imageNamed:@"1-1"];
    thirdVc.tabBarItem.selectedImage = [UIImage imageNamed:@"1-1@2x"];
    thirdVc.tabBarItem.badgeValue = @"13";
    UINavigationController *thirdNav = [[UINavigationController alloc] initWithRootViewController:thirdVc];
    
    
    ThirdViewController *fourthVc = [[ThirdViewController alloc] init];
    fourthVc.tabBarItem.title = @"第四个";
    fourthVc.tabBarItem.image = [UIImage imageNamed:@"1-1"];
    fourthVc.tabBarItem.selectedImage = [UIImage imageNamed:@"1-1@2x"];
    fourthVc.tabBarItem.badgeValue = @"13@2x";
    UINavigationController *fourthNav = [[UINavigationController alloc] initWithRootViewController:fourthVc];
    
    
    ThirdViewController *fif = [[ThirdViewController alloc] init];
    fif.tabBarItem.title = @"第五个";
    fif.tabBarItem.image = [UIImage imageNamed:@"1-1"];
    fif.tabBarItem.selectedImage = [UIImage imageNamed:@"1-1@2x"];
    fif.tabBarItem.badgeValue = @"13@3x";
    UINavigationController *fifNav = [[UINavigationController alloc] initWithRootViewController:fif];
// self.viewControllers: UITabBarController首先会清空所有旧的viewController，然后逐个（根据选择的tabbar）创建新的viewController。（无论是否设置选择的tabbar，默认创建第0个tabbar（即：创建第0个控制器））。

    self.viewControllers = @[firstNav,secondNav,thirdNav,fourthNav,fifNav];
//    或者采用下面方法：创建对应的子控制器
//    [self addChildViewController:firstVc];
//    [self addChildViewController:secondVc];
//    [self addChildViewController:thirdVc];
    
    
    
    self.selectedIndex = 1;
//   或者2
//    self.selectedViewController = firstVc;

}


@end
