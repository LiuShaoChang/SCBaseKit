//
//  SCBaseTableView.h
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/19.
//  Copyright © 2018年 YJYX. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef NSString * nibNamed;
typedef NSString * classNamed;
typedef NSString * cellReuseIdentifier;

@interface SCBaseTableView : UITableView

#pragma mark - subclass call
- (void)registerNibsWithCellReuseIdentifiers:(NSDictionary<nibNamed, cellReuseIdentifier> *)registParameters;
- (void)registerClassesWithCellReuseIdentifiers:(NSDictionary<classNamed, cellReuseIdentifier> *)registParameters;

- (void)registerNibsWithHeaderFooterViewReuseIdentifiers:(NSDictionary<nibNamed, cellReuseIdentifier> *)registParameters;
- (void)registerClassesWithHeaderFooterViewReuseIdentifiers:(NSDictionary<classNamed, cellReuseIdentifier> *)registParameters;

@end

NS_ASSUME_NONNULL_END
