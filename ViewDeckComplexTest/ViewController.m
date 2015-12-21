//
//  ViewController.m
//  ViewDeckComplexTest
//
//  Created by Nimrod Gutman on 21/12/2015.
//  Copyright © 2015 Nimrod Gutman. All rights reserved.
//

#import "ViewController.h"
#import "TabOneViewController.h"
#import "TabOneViewController2.h"
#import "ViewDeckContainer.h"

@interface ViewController ()

@property(nonatomic, strong) ViewDeckContainer *viewDeckContainer;
@end

@implementation ViewController

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (!self) return nil;


    self.viewDeckContainer = [[ViewDeckContainer alloc] init];

    self.viewControllers = @[
            [[TabOneViewController alloc] init],
            [[TabOneViewController2 alloc] init],
            self.viewDeckContainer.viewDeckController
    ];

    [self.viewDeckContainer loadVC3];

    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tabBar.translucent = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
