//
//  SCBaseTabBarViewController.m
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/18.
//  Copyright © 2018年 YJYX. All rights reserved.
//

#import "SCBaseTabBarViewController.h"
#import "SCBaseNavigationController.h"
#import "SCBaseViewController.h"

static CGFloat const tabFontSize = 12.f;
@interface SCBaseTabBarViewController ()

@end

@implementation SCBaseTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addChildControllers];

}

- (void)addChildControllers {
    SCBaseViewController *home = [[SCBaseViewController alloc] init];
    [self addOneChlildVC:home title:@"主页" fontSize:tabFontSize imageName:nil selectedImageName:nil hideBottomBarWhenPushed:NO];
    SCBaseViewController *news = [[SCBaseViewController alloc] init];
    [self addOneChlildVC:news title:@"资讯" fontSize:tabFontSize imageName:nil selectedImageName:nil hideBottomBarWhenPushed:NO];
    SCBaseViewController *mine = [[SCBaseViewController alloc] init];
    [self addOneChlildVC:mine title:@"我的" fontSize:tabFontSize imageName:nil selectedImageName:nil hideBottomBarWhenPushed:NO];
}

/**
 *  添加一个子控制器
 *
 *  @param childVC           子控制器对象
 *  @param title             标题
 *  @param imageName         图标
 *  @param selectedImageName 选中的图标
 */
- (void)addOneChlildVC:(UIViewController *)childVC title:(NSString *)title fontSize:(CGFloat)fontSize imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName hideBottomBarWhenPushed:(BOOL)hideBottomBarWhenPushed
{
    // 设置标题
    childVC.title = title;
    
    // 设置图标
    childVC.tabBarItem.image = [UIImage imageNamed:imageName];
    // 设置选中的图标
    childVC.tabBarItem.selectedImage = [UIImage imageNamed:selectedImageName];
    
    // 设置tabBarItem的普通文字颜色
    [childVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor lightGrayColor],NSFontAttributeName:[UIFont systemFontOfSize:fontSize]} forState:UIControlStateNormal];
    
    // 设置tabBarItem的选中文字颜色
    [childVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor redColor],NSFontAttributeName:[UIFont systemFontOfSize:fontSize]} forState:UIControlStateSelected];
    
    // 添加为tabbar控制器的子控制器
    SCBaseNavigationController *nav = [[SCBaseNavigationController alloc] initWithRootViewController:childVC];
    nav.hidesBottomBarWhenPushed = hideBottomBarWhenPushed;
    [self addChildViewController:nav];
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
