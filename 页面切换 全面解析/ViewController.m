//
//  ViewController.m
//  动画大全
//
//  Created by 邱少依 on 16/1/5.
//  Copyright © 2016年 QSY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *_tableView;
    NSArray *_dataArray;//文件夹数组
    NSArray *_classArray;//类名数组

}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
    [self setUI];
    // Do any additional setup after loading the view.
}

- (void)initData {
    _dataArray = [[NSArray alloc] initWithObjects:@"UINavigationbar（push & pop）",@"UITabBar(拥有多个子控制器,切换时并不释放子控制器)",@"Present(模态）",@"window的rootviewController（新特性：可以将上1个根控制器销毁）",nil];
    _classArray = [[NSArray alloc] initWithObjects:@"MainPushOrPopViewController",@"TabBarViewController",@"MainViewController",@"RootViewViewController", nil];
}

- (void)setUI {
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.backgroundColor = [UIColor whiteColor];
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    NSLog(@"少：self.view —> %@ \n tableview —> %@",NSStringFromCGRect(self.view.frame),NSStringFromCGRect(_tableView.frame));

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%li : %@",(long)indexPath.row,_dataArray[indexPath.row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Class cls;
    cls = NSClassFromString(_classArray[indexPath.row]);
    UIViewController *viewC = [[cls alloc] init];
#warning 少 上一个界面跳转时设置下一个界面的返回按钮
//    设置返回按钮
    UIBarButtonItem *backBtnItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.backBarButtonItem = backBtnItem;
    if (indexPath.row == 1) {//tabbar一般不入栈navigationbar的栈，故采用模态方式
        self.view.window.rootViewController = viewC;
        return;
    }
    [self.navigationController pushViewController:viewC animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
