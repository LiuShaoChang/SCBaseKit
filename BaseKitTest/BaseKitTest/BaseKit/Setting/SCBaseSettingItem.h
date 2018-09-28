//
//  SCBaseSettingItem.h
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/27.
//  Copyright © 2018 YJYX. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


typedef NS_ENUM(NSInteger, SettingStyle) {
    SettingStyleImage,
    SettingStyleIndicator,
    SettingStyleSwitch,
    SettingStyleLogout
};

@class SCBaseSettingItem;
typedef void(^Handler)(SCBaseSettingItem *item, NSIndexPath *indexPath);

@interface SCBaseSettingItem : NSObject

@property (nonatomic, copy, nullable) NSString *title;
@property (nonatomic, copy, nullable) NSString *subtitle;
@property (nonatomic, copy, nullable) NSString *imageUrl;
@property (nonatomic, assign) BOOL isOn;
@property (nonatomic, assign) SettingStyle settingStyle;
@property (nonatomic, copy) Handler handler;

- (instancetype)initWithSettingStyle:(SettingStyle)settingStyle title:(NSString *_Nullable)title subtitle:(NSString *_Nullable)subtitle imageUrl:(NSString *_Nullable)imageUrl isOn:(BOOL)isOn handler:(Handler)handler;

@end

NS_ASSUME_NONNULL_END
