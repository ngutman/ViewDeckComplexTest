//
// Created by Nimrod Gutman on 21/12/2015.
// Copyright (c) 2015 Nimrod Gutman. All rights reserved.
//

#import "TabOneViewController.h"


@implementation TabOneViewController {

}

- (instancetype)init {
    self = [super init];
    if (!self) return nil;

    self.view.backgroundColor = [UIColor redColor];
    self.tabBarItem.title = @"Tab 1";

    return self;
}

@end