//
//  SCBaseSettingViewController.m
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/27.
//  Copyright © 2018 YJYX. All rights reserved.
//

#import "SCBaseSettingViewController.h"
#import "SCBaseTableView.h"
#import "SCBaseDataSource.h"
#import "SCBaseSettingTableViewCell.h"

@interface SCBaseSettingViewController ()<UITableViewDelegate>
@property (nonatomic, strong) NSArray *items;
@property (nonatomic, strong) SCBaseTableView *tableView;
@property (nonatomic, strong) SCBaseDataSource *dataSource;
@property (nonatomic, strong) NSArray<CellConfigBlock> *cellConfigBlockArray;

@end

@implementation SCBaseSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.items = [self setUpItems];
    [self setUpTableView];
    
}

- (void)dealloc {
    NSLog(@"dealloced..");
}



- (void)setUpTableView {
    self.tableView = [[SCBaseTableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - CGRectGetMaxY(self.navigationController.navigationBar.frame)) style:UITableViewStyleGrouped];
    [self.view addSubview:_tableView];
    [self.tableView registerClassesWithCellReuseIdentifiers:[self prepareRegistParameters]];
    self.dataSource.sections = self.items.count;
    self.dataSource.items = self.items;
    self.tableView.sectionHeaderHeight = [self sectionHeaderHeight];
    self.tableView.sectionFooterHeight = [self sectionFooterHeight];
    self.tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 0.01)];
    self.tableView.dataSource = self.dataSource;
    self.tableView.delegate = self;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    SCBaseSettingItem *item = self.items[indexPath.section][indexPath.row];
    item.handler(item, indexPath);
}

#pragma mark - getter
- (SCBaseDataSource *)dataSource {
    if (!_dataSource) {
        _dataSource = [[SCBaseDataSource alloc] initWithCellIdentifiers:[self prepareIdentifiers] cellConfigBlocks:self.cellConfigBlockArray];
    }
    return _dataSource;
}

- (NSArray<CellConfigBlock> *)cellConfigBlockArray {
    if (!_cellConfigBlockArray) {
        CellConfigBlock block = ^(SCBaseSettingTableViewCell *cell, SCBaseSettingItem *item, NSIndexPath *indexPath){
            [cell configCellWithItem:item];
        };
        _cellConfigBlockArray = @[block];
    }
    return _cellConfigBlockArray;
}


#pragma mark - subclass overide
- (NSArray *)setUpItems {
    SCBaseSettingItem *item1 = [[SCBaseSettingItem alloc] initWithSettingStyle:SettingStyleImage title:@"更换头像" subtitle:nil imageUrl:nil isOn:NO handler:^(SCBaseSettingItem * _Nonnull item, NSIndexPath * _Nonnull indexPath) {
        NSLog(@"更换头像");
    }];
    SCBaseSettingItem *item2 = [[SCBaseSettingItem alloc] initWithSettingStyle:SettingStyleIndicator title:@"姓名" subtitle:@"傻逼" imageUrl:nil isOn:NO handler:^(SCBaseSettingItem * _Nonnull item, NSIndexPath * _Nonnull indexPath) {
        NSLog(@"change name");
    }];
    SCBaseSettingItem *item3 = [[SCBaseSettingItem alloc] initWithSettingStyle:SettingStyleIndicator title:@"性别" subtitle:@"妖" imageUrl:nil isOn:NO handler:^(SCBaseSettingItem * _Nonnull item, NSIndexPath * _Nonnull indexPath) {
        NSLog(@"change sex");
    }];
    SCBaseSettingItem *item4 = [[SCBaseSettingItem alloc] initWithSettingStyle:SettingStyleIndicator title:@"我的生日" subtitle:@"2018-3-25" imageUrl:nil isOn:NO handler:^(SCBaseSettingItem * _Nonnull item, NSIndexPath * _Nonnull indexPath) {
        NSLog(@"change birthday");
    }];
    SCBaseSettingItem *item5 = [[SCBaseSettingItem alloc] initWithSettingStyle:SettingStyleSwitch title:@"提示音" subtitle:nil imageUrl:nil isOn:NO handler:^(SCBaseSettingItem * _Nonnull item, NSIndexPath * _Nonnull indexPath) {
        NSLog(@"change sound");
    }];
    SCBaseSettingItem *item6 = [[SCBaseSettingItem alloc] initWithSettingStyle:SettingStyleLogout title:@"退出登录" subtitle:nil imageUrl:nil isOn:NO handler:^(SCBaseSettingItem * _Nonnull item, NSIndexPath * _Nonnull indexPath) {
        NSLog(@"退出登录");
    }];
    
    return @[@[item1,item2,item3,item4],
             @[item5],
             @[item6]];
}

- (NSDictionary<reuseIdentifier, classNamed> *)prepareRegistParameters {
    return @{@"SCSettingID":@"SCBaseSettingTableViewCell"};
}
- (NSArray<reuseIdentifier> *)prepareIdentifiers {
    return @[@"SCSettingID"];
}
- (CGFloat)sectionHeaderHeight {
    return 5;
}
- (CGFloat)sectionFooterHeight {
    return 5;
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
