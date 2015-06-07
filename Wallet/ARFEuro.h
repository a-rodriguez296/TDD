//
//  ARFEuro.h
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/7/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ARFEuro : NSObject

@property (nonatomic, readonly) NSInteger amount;

- (id)initWithAmount:(NSUInteger) amount;
-(ARFEuro *) times:(NSUInteger) multiplier;

@end
