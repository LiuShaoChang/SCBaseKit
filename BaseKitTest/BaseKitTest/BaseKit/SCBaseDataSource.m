//
//  SCBaseDataSource.m
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/20.
//  Copyright © 2018年 YJYX. All rights reserved.
//

#import "SCBaseDataSource.h"

@interface SCBaseDataSource ()

@property (nonatomic, strong) NSArray<NSString *> *cellIdentifiers;
@property (nonatomic, strong) NSArray<CellConfigBlock> *cellConfigBlocks;

@end

@implementation SCBaseDataSource

- (id)initWithCellIdentifiers:(NSArray<NSString *> *)cellIdentifiers cellConfigBlocks:(NSArray<CellConfigBlock> *)cellConfigBlocks {
    if (self = [super init]) {
        self.cellIdentifiers = cellIdentifiers;
        self.cellConfigBlocks = cellConfigBlocks;
    }
    return self;
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
    return self.sections == 1 ? self.items[indexPath.row] : self.items[indexPath.section][indexPath.row];
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.sections;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (self.sections == 1) {
        return self.items.count;
    }else {
        if ([self.items[section] isKindOfClass:[NSArray class]] || [self.items[section] isKindOfClass:[NSMutableArray class]]) {
            return [self.items[section] count];
        }else {
            NSAssert(NO, @"items元素不符合规定,sections不为1时,元素必须为数组类型");
            return 0;
        }
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifiers[indexPath.section] forIndexPath:indexPath];
    CellConfigBlock block = self.cellConfigBlocks[indexPath.section];
    id item = [self itemAtIndexPath:indexPath];
    block(cell, item, indexPath);
    return cell;

}

@end
