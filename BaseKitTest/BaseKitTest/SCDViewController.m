//
//  SCDViewController.m
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/18.
//  Copyright © 2018年 YJYX. All rights reserved.
//

#import "SCDViewController.h"
#import "SCBaseTableView.h"
#import "SCBaseDataSource.h"
#import "SCACell.h"
#import "SCBCell.h"

@interface SCDViewController ()<UITableViewDelegate>

@property (nonatomic, strong) SCBaseTableView *tableView;
@property (nonatomic, strong) SCBaseDataSource *dataSource;
@property (nonatomic, strong) NSArray<CellConfigBlock> *cellConfigBlockArray;
@property (nonatomic, strong) NSArray *items;

@end

@implementation SCDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupTableView];
    
}

- (void)dealloc {
    NSLog(@"销毁");
}

- (void)setupTableView {
    self.tableView = [[SCBaseTableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - CGRectGetMaxY(self.navigationController.navigationBar.frame)) style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
    [self.tableView registerNibsWithCellReuseIdentifiers:@{@"SCACellID":@"SCACell",@"SCBCellID":@"SCBCell"}];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.dataSource.sections = self.items.count;
    self.dataSource.items = self.items;
    self.tableView.dataSource = self.dataSource;
    self.tableView.delegate = self;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 150;
}

- (SCBaseDataSource *)dataSource {
    if (!_dataSource) {
        _dataSource = [[SCBaseDataSource alloc] initWithCellIdentifiers:@[@"SCACellID",@"SCBCellID"] cellConfigBlocks:self.cellConfigBlockArray];
    }
    return _dataSource;
}

- (NSArray<CellConfigBlock> *)cellConfigBlockArray {
    if (!_cellConfigBlockArray) {
        
        CellConfigBlock blockA = ^(SCACell *aCell, NSString *aString, NSIndexPath *indexPath) {
            [aCell configCellWithString:aString];
        };
        CellConfigBlock blockB = ^(SCBCell *bCell, NSString *bString, NSIndexPath *indexPath) {
            [bCell configCellWithString:bString];
        };
        
        _cellConfigBlockArray = @[blockA, blockB];
    }
    return _cellConfigBlockArray;
}

- (NSArray *)items {
    if (!_items) {
        _items = @[@[@"ACell1",@"ACell2",@"ACell3",@"ACell4"],@[@"BCell1",@"BCell2",@"BCell3",@"BCell4"]];
    }
    return _items;
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
