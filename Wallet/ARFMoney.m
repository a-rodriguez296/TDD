//
//  ARFMoney.m
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/7/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import "ARFMoney.h"
#import "NSObject+GNUStepAddons.h"
#import "ARFBroker.h"


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

-(id<ARFMoney>) times:(NSUInteger) multiplier{
    
    return [[ARFMoney alloc] initWithAmount:([self.amount integerValue] * multiplier) currency:self.currency];
}

-(id<ARFMoney>) plus:(ARFMoney *) other{
    
    
    NSUInteger newAmount = [self.amount integerValue] + [other.amount integerValue];
    ARFMoney *newMoney = [[ARFMoney alloc] initWithAmount:newAmount currency:self.currency];
    NSLog(@"%@", newMoney);
    return newMoney;
    
}

-(id<ARFMoney>) reduceToCurrency:(NSString *) currency withBroker:(ARFBroker *) broker{
    
    ARFMoney *result;
    NSString *rateKey = [broker keyFromCurrency:currency toCurrency:self.currency];
    double rate = [[broker.rateDictionary objectForKey:rateKey] doubleValue];
    
    if ([self.currency isEqualToString:currency]) {
        result = self;
    }
    else if (rate == 0){
        [NSException raise:@"NilConversionException" format:@"No conversion rate from %@ to %@", self.currency, currency];
    }
    else{
        NSInteger newAmount = [self.amount integerValue] * rate;
        result= [[ARFMoney alloc] initWithAmount:newAmount currency:self.currency];
    }
    return result;
    
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
