//
//  SCBaseViewController.m
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/17.
//  Copyright © 2018年 YJYX. All rights reserved.
//

#import "SCBaseViewController.h"

@interface SCBaseViewController ()


@end

@implementation SCBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:nil style:UIBarButtonItemStylePlain target:self action:nil];
    
}

- (void)setNaviBarThemeStyle:(BarThemeStyle)naviBarThemeStyle {
    SCBaseNavigationController *navi = (SCBaseNavigationController *)self.navigationController;
    switch (naviBarThemeStyle) {
        case BarThemeStyleMain:
            navi.barThemeStyle = BarThemeStyleMain;
            break;
        case BarThemeStyleWhite:
            navi.barThemeStyle = BarThemeStyleWhite;
            break;
        case BarThemeStyleClear:
            navi.barThemeStyle = BarThemeStyleClear;
            break;
        default:
            break;
    }
}

#pragma mark - subclass overide



#pragma mark - action




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
