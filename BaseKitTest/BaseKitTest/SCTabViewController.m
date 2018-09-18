//
//  SCTabViewController.m
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/18.
//  Copyright © 2018年 YJYX. All rights reserved.
//

#import "SCTabViewController.h"
#import "SCAViewController.h"
#import "SCBViewController.h"
#import "SCCViewController.h"

@interface SCTabViewController ()

@end

@implementation SCTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)addChildControllers {
    SCAViewController *A = [[SCAViewController alloc] init];
    [self addOneChlildVC:A title:@"A" fontSize:12 imageName:nil selectedImageName:nil hideBottomBarWhenPushed:YES];
    SCBViewController *B = [[SCBViewController alloc] init];
    [self addOneChlildVC:B title:@"B" fontSize:12 imageName:nil selectedImageName:nil hideBottomBarWhenPushed:NO];
    SCCViewController *C = [[SCCViewController alloc] init];
    [self addOneChlildVC:C title:@"C" fontSize:12 imageName:nil selectedImageName:nil hideBottomBarWhenPushed:YES];
    
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
