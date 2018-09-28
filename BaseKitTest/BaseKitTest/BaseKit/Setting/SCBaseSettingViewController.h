//
//  SCBaseSettingViewController.h
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/27.
//  Copyright © 2018 YJYX. All rights reserved.
//

#import "SCBaseViewController.h"
#import "SCBaseSettingItem.h"

NS_ASSUME_NONNULL_BEGIN

typedef NSString * reuseIdentifier;
typedef NSString * classNamed;
@interface SCBaseSettingViewController : SCBaseViewController



// subclass overide
- (NSArray *)setUpItems;
- (NSDictionary<reuseIdentifier, classNamed> *)prepareRegistParameters;
- (NSArray<reuseIdentifier> *)prepareIdentifiers;
- (CGFloat)sectionHeaderHeight;
- (CGFloat)sectionFooterHeight;


@end

NS_ASSUME_NONNULL_END
