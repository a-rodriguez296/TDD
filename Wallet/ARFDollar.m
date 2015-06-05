//
//  ARFDollar.m
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/5/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import "ARFDollar.h"

@interface ARFDollar ()

@property (nonatomic) NSUInteger amount;

@end

@implementation ARFDollar

- (id)initWithAmount:(NSUInteger) amount
{
    self = [super init];
    if (self) {
        _amount = amount;
    }
    return self;
}




@end
