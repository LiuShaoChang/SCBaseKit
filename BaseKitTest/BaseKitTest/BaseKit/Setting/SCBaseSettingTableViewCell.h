//
//  SCBaseSettingTableViewCell.h
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/27.
//  Copyright © 2018 YJYX. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SCBaseSettingItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface SCBaseSettingTableViewCell : UITableViewCell

- (void)configCellWithItem:(SCBaseSettingItem *)item;

@end

NS_ASSUME_NONNULL_END
