//
// Created by Nimrod Gutman on 21/12/2015.
// Copyright (c) 2015 Nimrod Gutman. All rights reserved.
//

#import "ViewDeckContainer.h"
#import "IIViewDeckController.h"
#import "ViewController3.h"
#import "LeftController.h"



@interface ViewDeckContainer ()
@property(nonatomic, strong) UINavigationController *centerController;
@property(nonatomic, strong) UIViewController *leftController;
@end

@implementation ViewDeckContainer {

}
- (instancetype)init {
    self = [super init];
    if (!self) return nil;

    self.viewDeckController = [[IIViewDeckController alloc] initWithCenterViewController:self.centerController
                                                                      leftViewController:self.leftController];
    self.viewDeckController.tabBarItem.title = @"ViewDeck";

    return self;
}

- (UINavigationController *)centerController
{
    if (_centerController) {
        return _centerController;
    }

    _centerController = [[UINavigationController alloc] init];

    return _centerController;
}

- (UIViewController *)leftController {
    if (_leftController) {
        return _leftController;
    }

    _leftController = [[LeftController alloc] init];

    return _leftController;
}


- (void)loadVC3 {
    ViewController3 *viewController3 = [[ViewController3 alloc] init];

    [self.centerController setViewControllers:@[viewController3]];
}
@end