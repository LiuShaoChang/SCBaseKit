//
//  SCBaseNavigationController.h
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/17.
//  Copyright © 2018年 YJYX. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,BarThemeStyle) {
    BarThemeStyleClear,         // 透明
    BarThemeStyleWhite,         // 白色
    BarThemeStyleMain           // 主题色
};

@interface SCBaseNavigationController : UINavigationController

@property (nonatomic, assign) BarThemeStyle barThemeStyle;

#pragma mark - subclass overide
+ (void)initializeSetting;
- (void)configBarStyleMain;
#pragma mark - subclass call
- (void)configNaviBarWithBackgroundImage:(UIImage *_Nullable)backgroundImage shadowImage:(UIImage *_Nullable)shadowImage titleTextAttributes:(NSDictionary<NSAttributedStringKey,id> *)titleAttributes backIndicatorImageNamed:(UIImage *)backIndicatorImage tintColor:(UIColor *)tintColor barStyle:(UIBarStyle)barStyle;

@end
