//
//  SCBaseNavigationController.m
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/17.
//  Copyright © 2018年 YJYX. All rights reserved.
//

#import "SCBaseNavigationController.h"


static CGFloat const naviTitleFontOfSize = 17.f;

@interface SCBaseNavigationController ()<UINavigationControllerDelegate>

@property (nonatomic, assign) BOOL ignorePush;

@end

@implementation SCBaseNavigationController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
}

#pragma mark - overide
+ (void)initialize
{
    if (self == [SCBaseNavigationController class]) {
        [self initializeSetting];
    }
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (!_ignorePush) {
        if (self.childViewControllers.count > 0) {
            viewController.hidesBottomBarWhenPushed = self.hidesBottomBarWhenPushed;
        }
        [super pushViewController:viewController animated:animated];
    }
    _ignorePush = YES;
}

#pragma mark - UINavigationControllerDelegate
// prevent the next push when the current push is unfinished
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    _ignorePush = NO;
}


#pragma mark -
- (void)configBarStyleClear {
    
    [self configNaviBarWithBackgroundImage:[[UIImage alloc] init] shadowImage:[[UIImage alloc] init] titleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor],NSFontAttributeName:[UIFont systemFontOfSize:naviTitleFontOfSize]} backIndicatorImageNamed:[UIImage imageNamed:@"navi_back_black"] tintColor:[UIColor blackColor] barStyle:UIBarStyleDefault];
}

- (void)configBarStyleWhite {
    
    [self configNaviBarWithBackgroundImage:nil shadowImage:nil titleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor],NSFontAttributeName:[UIFont systemFontOfSize:naviTitleFontOfSize]} backIndicatorImageNamed:[UIImage imageNamed:@"navi_back_black"] tintColor:[UIColor blackColor] barStyle:UIBarStyleDefault];
}

- (void)configBarStyleMain {

    [self configNaviBarWithBackgroundImage:[UIImage imageNamed:@"navi_background"] shadowImage:[[UIImage alloc] init] titleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont systemFontOfSize:naviTitleFontOfSize]} backIndicatorImageNamed:[UIImage imageNamed:@"navi_back"] tintColor:[UIColor whiteColor] barStyle:UIBarStyleBlack];
}

+ (void)initializeSetting {
    UINavigationBar *naviBar = [UINavigationBar appearance];
    UIImage *image = [[UIImage imageNamed:@"navi_background"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 0, 0) resizingMode:UIImageResizingModeStretch];
    [naviBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    [naviBar setShadowImage:[[UIImage alloc] init]];
    [naviBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont systemFontOfSize:naviTitleFontOfSize]}];
    UIImage *backIndicatorImage = [UIImage imageNamed:@"navi_back"];
    naviBar.backIndicatorImage = backIndicatorImage;
    naviBar.backIndicatorTransitionMaskImage = backIndicatorImage;
    naviBar.tintColor = [UIColor whiteColor];
    naviBar.barStyle = UIBarStyleBlack;
}

#pragma mark -
- (void)configNaviBarWithBackgroundImage:(UIImage *_Nullable)backgroundImage shadowImage:(UIImage *_Nullable)shadowImage titleTextAttributes:(NSDictionary<NSAttributedStringKey,id> *)titleAttributes backIndicatorImageNamed:(UIImage *)backIndicatorImage tintColor:(UIColor *)tintColor barStyle:(UIBarStyle)barStyle {
    
    UIImage *image = backgroundImage;
    if (image) {
        image = [backgroundImage resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 0, 0) resizingMode:UIImageResizingModeStretch];
    }
    [self.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    [self.navigationBar setShadowImage:shadowImage];
    [self.navigationBar setTitleTextAttributes:titleAttributes];
    self.navigationBar.backIndicatorImage = backIndicatorImage;
    self.navigationBar.backIndicatorTransitionMaskImage = backIndicatorImage;
    self.navigationBar.tintColor = tintColor;
    self.navigationBar.barStyle = barStyle;
}


#pragma mark - Setter
- (void)setBarThemeStyle:(BarThemeStyle)barThemeStyle {
    switch (barThemeStyle) {
        case BarThemeStyleMain:
            [self configBarStyleMain];
            break;
        case BarThemeStyleWhite:
            [self configBarStyleWhite];
            break;
        case BarThemeStyleClear:
            [self configBarStyleClear];
            break;
        default:
            break;
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
