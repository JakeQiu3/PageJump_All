//
//  LoginViewController.h
//  页面切换 全面解析
//
//  Created by 邱少依 on 15/12/29.
//  Copyright © 2015年 QSY. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LoginViewController;

@protocol LoginViewControllerDelegate <NSObject>
@optional
- (void)loginViewShowUserName:(NSString *)userName;
@end

@interface LoginViewController : UIViewController
@property (nonatomic, assign) id<LoginViewControllerDelegate> delegate;
@end
