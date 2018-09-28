//
//  SCSettingViewController.m
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/28.
//  Copyright © 2018 YJYX. All rights reserved.
//

#import "SCSettingViewController.h"

@interface SCSettingViewController ()

@end

@implementation SCSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"设置";
    
}


- (NSArray *)setUpItems {
    SCBaseSettingItem *item1 = [[SCBaseSettingItem alloc] initWithSettingStyle:SettingStyleIndicator title:@"My name" subtitle:@"Solin Liu" imageUrl:nil isOn:NO handler:^(SCBaseSettingItem * _Nonnull item, NSIndexPath * _Nonnull indexPath) {
        NSLog(@"change your name");
    }];
    SCBaseSettingItem *item2 = [[SCBaseSettingItem alloc] initWithSettingStyle:SettingStyleIndicator title:@"My career" subtitle:@"superman" imageUrl:nil isOn:NO handler:^(SCBaseSettingItem * _Nonnull item, NSIndexPath * _Nonnull indexPath) {
        NSLog(@"change your job");
    }];
    SCBaseSettingItem *item3 = [[SCBaseSettingItem alloc] initWithSettingStyle:SettingStyleSwitch title:@"Sound" subtitle:nil imageUrl:nil isOn:NO handler:^(SCBaseSettingItem * _Nonnull item, NSIndexPath * _Nonnull indexPath) {
        NSLog(@"switch is on");
    }];
    SCBaseSettingItem *item4 = [[SCBaseSettingItem alloc] initWithSettingStyle:SettingStyleLogout title:@"Login out" subtitle:nil imageUrl:nil isOn:NO handler:^(SCBaseSettingItem * _Nonnull item, NSIndexPath * _Nonnull indexPath) {
        NSLog(@"login out...");
    }];
    return @[@[item1,item2],
                   @[item3],
                   @[item4]];
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
