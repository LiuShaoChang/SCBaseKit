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
typedef NSString * reuseIdentifier;

@interface SCBaseTableView : UITableView

#pragma mark - subclass call
- (void)registerNibsWithCellReuseIdentifiers:(NSDictionary<reuseIdentifier, nibNamed> *)registParameters;
- (void)registerClassesWithCellReuseIdentifiers:(NSDictionary<reuseIdentifier, classNamed> *)registParameters;

- (void)registerNibsWithHeaderFooterViewReuseIdentifiers:(NSDictionary<reuseIdentifier, nibNamed> *)registParameters;
- (void)registerClassesWithHeaderFooterViewReuseIdentifiers:(NSDictionary<reuseIdentifier, classNamed> *)registParameters;

@end

NS_ASSUME_NONNULL_END
