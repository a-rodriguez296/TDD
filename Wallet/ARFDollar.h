//
//  ARFDollar.h
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/5/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ARFDollar : NSObject

@property (nonatomic, readonly) NSInteger amount;

- (id)initWithAmount:(NSUInteger) amount;
-(ARFDollar *) times:(NSUInteger) multiplier;

@end
