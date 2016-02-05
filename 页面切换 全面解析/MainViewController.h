//
//  MainViewController.h
//  页面切换 全面解析
//
//  Created by 邱少依 on 15/12/29.
//  Copyright © 2015年 QSY. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MainViewController;
@protocol MainViewControllerDelegate <NSObject>
@optional
- (void)mainViewDelegateShowUserName:(NSString *)userName;
@end

@interface MainViewController : UIViewController
@property (nonatomic, assign) id<MainViewControllerDelegate> delegate;

@end
