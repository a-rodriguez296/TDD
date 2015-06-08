//
//  ARFMoney.h
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/7/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ARFMoney : NSObject

+(id) euroWithAmount:(NSUInteger) amount;
+(id) dollarWithAmount:(NSUInteger) amount;

- (id)initWithAmount:(NSUInteger) amount;
-(id) times:(NSUInteger) multiplier;

@end
