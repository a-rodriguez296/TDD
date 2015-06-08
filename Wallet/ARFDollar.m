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



-(id) times:(NSUInteger) multiplier{
    
    return [ARFMoney dollarWithAmount:[self.amount integerValue] * multiplier];
}

@end
