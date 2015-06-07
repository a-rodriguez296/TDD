//
//  ARFEuro.h
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/7/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ARFMoney.h"

@interface ARFEuro : ARFMoney




-(ARFEuro *) times:(NSUInteger) multiplier;

@end
