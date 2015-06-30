//
//  ARFWallet.h
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/8/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ARFMoney.h"

@interface ARFWallet : NSObject <ARFMoney>

-(NSUInteger) count;


@end
