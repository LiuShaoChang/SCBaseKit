//
//  SCBaseTableView.m
//  BaseKitTest
//
//  Created by 刘少昌 on 2018/9/19.
//  Copyright © 2018年 YJYX. All rights reserved.
//

#import "SCBaseTableView.h"

@implementation SCBaseTableView

- (void)registerNibsWithCellReuseIdentifiers:(NSDictionary<nibNamed, cellReuseIdentifier> *)registParameters {
    for (NSString *nibName in registParameters.allKeys) {
        [self registerNib:[UINib nibWithNibName:nibName bundle:nil] forCellReuseIdentifier:registParameters[nibName]];
    }
}
- (void)registerClassesWithCellReuseIdentifiers:(NSDictionary<classNamed, cellReuseIdentifier> *)registParameters {
    for (NSString *className in registParameters.allKeys) {
        [self registerClass:NSClassFromString(className) forCellReuseIdentifier:registParameters[className]];
    }
}

- (void)registerNibsWithHeaderFooterViewReuseIdentifiers:(NSDictionary<nibNamed, cellReuseIdentifier> *)registParameters {
    for (NSString *nibName in registParameters.allKeys) {
        [self registerNib:[UINib nibWithNibName:nibName bundle:nil] forHeaderFooterViewReuseIdentifier:registParameters[nibName]];
    }
}

- (void)registerClassesWithHeaderFooterViewReuseIdentifiers:(NSDictionary<classNamed, cellReuseIdentifier> *)registParameters {
    for (NSString *className in registParameters.allKeys) {
        [self registerClass:NSClassFromString(className) forHeaderFooterViewReuseIdentifier:registParameters[className]];
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
