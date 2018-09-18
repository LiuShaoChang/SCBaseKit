//
//  SCBaseTabBarViewController.h
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/18.
//  Copyright © 2018年 YJYX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SCBaseTabBarViewController : UITabBarController

#pragma mark - subclass overide
- (void)addChildControllers;

#pragma mark - subclass call
/**
 *  添加一个子控制器
 *
 *  @param childVC           子控制器对象
 *  @param title             标题
 *  @param imageName         图标
 *  @param selectedImageName 选中的图标
 */
- (void)addOneChlildVC:(UIViewController *)childVC title:(NSString *)title fontSize:(CGFloat)fontSize imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName hideBottomBarWhenPushed:(BOOL)hideBottomBarWhenPushed;


@end
