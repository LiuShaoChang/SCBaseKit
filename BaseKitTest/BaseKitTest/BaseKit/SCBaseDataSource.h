//
//  SCBaseDataSource.h
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/20.
//  Copyright © 2018年 YJYX. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^CellConfigBlock)(id cell, id model , NSIndexPath *indexpath);
@interface SCBaseDataSource : NSObject<UITableViewDataSource>

@property (nonatomic, assign) NSInteger sections;
@property (nonatomic, strong) NSArray *items;

- (id)initWithCellIdentifiers:(NSArray<NSString *> *)cellIdentifiers cellConfigBlocks:(NSArray<CellConfigBlock> *)cellConfigBlocks;

@end

NS_ASSUME_NONNULL_END
