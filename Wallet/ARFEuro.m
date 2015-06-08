//
//  ARFEuro.m
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/7/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import "ARFEuro.h"
#import "ARFMoney-Private.h"




@implementation ARFEuro





-(id) times:(NSUInteger) multiplier{
    
    return [ARFMoney dollarWithAmount:[self.amount integerValue] * multiplier];
}




@end
