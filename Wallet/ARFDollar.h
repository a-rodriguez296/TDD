//
//  ARFDollar.h
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/5/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ARFMoney.h"

@interface ARFDollar : ARFMoney




-(ARFDollar *) times:(NSUInteger) multiplier;

@end
