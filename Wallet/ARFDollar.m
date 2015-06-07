//
//  ARFDollar.m
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/5/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import "ARFDollar.h"
#import "ARFMoney-Private.h"

@implementation ARFDollar



-(ARFDollar *) times:(NSUInteger) multiplier{
    
    return [[ARFDollar alloc] initWithAmount:([self.amount integerValue]  * multiplier)];
}

@end
