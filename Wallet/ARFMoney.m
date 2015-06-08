//
//  ARFMoney.m
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/7/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import "ARFMoney.h"
#import "NSObject+GNUStepAddons.h"

@interface ARFMoney ()




@end


@implementation ARFMoney

+(id) euroWithAmount:(NSUInteger) amount{
    
    return [[ARFMoney alloc] initWithAmount:amount currency:@"EUR"];
}


+(id) dollarWithAmount:(NSUInteger) amount{
    
    return [[ARFMoney alloc] initWithAmount:amount currency:@"USD"];
}


- (id)initWithAmount:(NSUInteger)amount currency:(NSString *) currency
{
    self = [super init];
    if (self) {
        _amount = @(amount);
        _currency = currency;
    }
    return self;
}

-(id) times:(NSUInteger) multiplier{
    
    return [[ARFMoney alloc] initWithAmount:([self.amount integerValue] * multiplier) currency:self.currency];
}

-(ARFMoney *) plus:(ARFMoney *) other{
    
    return [[ARFMoney alloc] initWithAmount:[self.amount integerValue] + [other.amount integerValue] currency:self.currency];
    
}

#pragma mark Overwritten
-(NSString *)description{
    
    return [NSString stringWithFormat:@"<%@ $: %@>", [self class], self.amount];
    
}


-(NSUInteger)hash{
    return [self.amount integerValue];
    
}

-(BOOL)isEqual:(id)object{
    return (self.amount == [object amount]);
}

@end
