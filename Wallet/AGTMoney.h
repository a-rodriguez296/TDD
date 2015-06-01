//
//  AGTMoney.h
//  Wallet
//
//  Created by Fernando Rodríguez Romero on 01/06/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AGTMoney : NSObject

-(id) initWithAmount:(NSUInteger) amount;

-(AGTMoney*) times:(NSUInteger) multiplier;

@end
