//
//  SCACell.m
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/20.
//  Copyright © 2018年 YJYX. All rights reserved.
//

#import "SCACell.h"

@implementation SCACell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)dealloc {
    NSLog(@"cell 销毁");
}

- (void)configCellWithString:(NSString *)string {
    self.alabel.text = string;
    [self.alabel sizeToFit];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
