//
//  SCCViewController.m
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/18.
//  Copyright © 2018年 YJYX. All rights reserved.
//

#import "SCCViewController.h"

@interface SCCViewController ()

@end

@implementation SCCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.naviBarThemeStyle = BarThemeStyleWhite;
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
