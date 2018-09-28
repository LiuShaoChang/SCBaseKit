//
//  SCBaseSettingTableViewCell.m
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/27.
//  Copyright © 2018 YJYX. All rights reserved.
//

#import "SCBaseSettingTableViewCell.h"

@implementation SCBaseSettingTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)configCellWithItem:(SCBaseSettingItem *)item {
    
    self.textLabel.text = item.title;
    self.detailTextLabel.text = item.subtitle;
    switch (item.settingStyle) {
        case SettingStyleImage:
            self.accessoryView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
            break;
        case SettingStyleIndicator:
            self.accessoryView = nil;
            self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            break;
        case SettingStyleSwitch:
            self.accessoryView = [[UISwitch alloc] init];
            break;
        case SettingStyleLogout:
            self.accessoryType = UITableViewCellAccessoryNone;
            self.textLabel.textAlignment = NSTextAlignmentCenter;
            break;
        default:
            break;
    }
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
