//
//  SCACell.h
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/20.
//  Copyright © 2018年 YJYX. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SCACell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *alabel;

- (void)configCellWithString:(NSString *)string;

@end

NS_ASSUME_NONNULL_END
