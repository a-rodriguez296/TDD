//
//  ARFEuro.m
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/7/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import "ARFEuro.h"

@interface ARFEuro ()

@property (nonatomic) NSInteger amount;

@end


@implementation ARFEuro


- (id)initWithAmount:(NSUInteger)amount
{
    self = [super init];
    if (self) {
        _amount = amount;
    }
    return self;
}


-(ARFEuro *) times:(NSUInteger)multiplier{
    
    return [[ARFEuro alloc] initWithAmount:self.amount * multiplier];
}




@end
