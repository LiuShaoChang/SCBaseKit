//
//  SCBaseTableView.m
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/19.
//  Copyright © 2018年 YJYX. All rights reserved.
//

#import "SCBaseTableView.h"

@implementation SCBaseTableView

- (void)registerNibsWithCellReuseIdentifiers:(NSDictionary<reuseIdentifier, nibNamed> *)registParameters {
    for (NSString *identifier in registParameters.allKeys) {
        [self registerNib:[UINib nibWithNibName:registParameters[identifier] bundle:nil] forCellReuseIdentifier:identifier];
    }
}
- (void)registerClassesWithCellReuseIdentifiers:(NSDictionary<reuseIdentifier, classNamed> *)registParameters {
    for (NSString *identifier in registParameters.allKeys) {
        [self registerClass:NSClassFromString(registParameters[identifier]) forCellReuseIdentifier:identifier];
    }
}

- (void)registerNibsWithHeaderFooterViewReuseIdentifiers:(NSDictionary<reuseIdentifier, nibNamed> *)registParameters {
    for (NSString *identifier in registParameters.allKeys) {
        [self registerNib:[UINib nibWithNibName:registParameters[identifier] bundle:nil] forHeaderFooterViewReuseIdentifier:identifier];
    }
}
- (void)registerClassesWithHeaderFooterViewReuseIdentifiers:(NSDictionary<reuseIdentifier, classNamed> *)registParameters {
    for (NSString *identifier in registParameters.allKeys) {
        [self registerClass:NSClassFromString(registParameters[identifier]) forHeaderFooterViewReuseIdentifier:identifier];
    }
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
