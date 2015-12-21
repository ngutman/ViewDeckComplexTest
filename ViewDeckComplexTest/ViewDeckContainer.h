//
// Created by Nimrod Gutman on 21/12/2015.
// Copyright (c) 2015 Nimrod Gutman. All rights reserved.
//

#import <Foundation/Foundation.h>

@class IIViewDeckController;


@interface ViewDeckContainer : NSObject
@property(nonatomic, strong) IIViewDeckController *viewDeckController;

- (void)loadVC3;
@end