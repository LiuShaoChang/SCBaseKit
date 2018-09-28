//
//  SCBaseSettingItem.m
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/27.
//  Copyright © 2018 YJYX. All rights reserved.
//

#import "SCBaseSettingItem.h"

@implementation SCBaseSettingItem

- (instancetype)initWithSettingStyle:(SettingStyle)settingStyle title:(NSString *)title subtitle:(NSString *)subtitle imageUrl:(NSString *)imageUrl isOn:(BOOL)isOn handler:(nonnull Handler)handler{
    
    if (self = [super init]) {
        _settingStyle = settingStyle;
        _title = title;
        _subtitle = subtitle;
        _imageUrl = imageUrl;
        _isOn = isOn;
        _handler = handler;
    }
    return self;
    
}

@end
