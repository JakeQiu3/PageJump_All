//
//  TabBarViewController.m
//  页面切换 全面解析
//
//  Created by 邱少依 on 15/12/28.
//  Copyright © 2015年 QSY. All rights reserved.
//

#import "TabBarViewController.h"
#import "WebChatViewController.h"
#import "ContactViewController.h"
@interface TabBarViewController ()

@end

@implementation TabBarViewController
// tabBarItem的image属性必须是png格式（建议大小32*32）并且打开alpha通道否则无法正常显示

 //注意默认情况下UITabBarController在加载子视图时是懒加载的，所以这里调用1次contactController，否则在第一次展示时只有第一个控制器tab图标，contactController的tab图标不会显示.
- (void)viewDidLoad {
    [super viewDidLoad];
    
    WebChatViewController *webVc = [[WebChatViewController alloc] init];
    webVc.view.backgroundColor = [UIColor whiteColor];
    webVc.tabBarItem.title = @"web Chat";
    webVc.tabBarItem.image = [UIImage imageNamed:@"1-1@2x"];
    webVc.tabBarItem.selectedImage = [UIImage imageNamed:@"1-1"];
    webVc.tabBarItem.badgeValue = @"5";
    
    
    ContactViewController *contactVc = [[ContactViewController alloc] init];
    contactVc.view.backgroundColor = [UIColor grayColor];
    contactVc.tabBarItem.title = @"Contact";
    contactVc.tabBarItem.image = [UIImage imageNamed:@"1-1@2x"];
    contactVc.tabBarItem.selectedImage = [UIImage imageNamed:@"1-1"];
    contactVc.tabBarItem.badgeValue = @"14";
    
    
    self.viewControllers = @[webVc,contactVc];
    self.selectedIndex = 1;

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
