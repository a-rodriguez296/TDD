//
//  ARFMoney.h
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/7/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ARFMoney : NSObject

@property (nonatomic, copy) NSString *currency;
@property (nonatomic, strong) NSNumber *amount;

+(id) euroWithAmount:(NSUInteger) amount;
+(id) dollarWithAmount:(NSUInteger) amount;

- (id)initWithAmount:(NSUInteger)amount currency:(NSString *) currency;
-(id) times:(NSUInteger) multiplier;
-(ARFMoney *) plus:(ARFMoney *) other;

@end
