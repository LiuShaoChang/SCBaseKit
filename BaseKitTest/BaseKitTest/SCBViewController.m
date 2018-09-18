//
//  SCBViewController.m
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/17.
//  Copyright © 2018年 YJYX. All rights reserved.
//

#import "SCBViewController.h"
#import "SCCViewController.h"

@interface SCBViewController ()

@end

@implementation SCBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    self.edgesForExtendedLayout = UIRectEdgeTop;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushNext)];
    [self.view addGestureRecognizer:tap];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.naviBarThemeStyle = BarThemeStyleClear;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    self.naviBarThemeStyle = BarThemeStyleMain;
}

- (void)pushNext {
    SCCViewController *cVC = [[SCCViewController alloc] init];
    [self.navigationController pushViewController:cVC animated:YES];
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
