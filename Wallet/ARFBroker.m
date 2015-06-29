//
//  ARFBroker.m
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/8/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import "ARFBroker.h"
#import "ARFMoney.h"

@interface ARFBroker ()



@end

@implementation ARFBroker

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rateDictionary = [NSMutableDictionary dictionary];
    }
    return self;
}

-(id<ARFMoney>) reduce:(id<ARFMoney>) sum toCurrency:(NSString *) currency{
    
    return [sum reduceToCurrency:currency withBroker:self];
}

-(void) addRate:(NSInteger) rate fromCurrency:(NSString *) fromCurrency toCurrency:(NSString *) toCurrency{
    
    NSString *key = [NSString stringWithFormat:@"%@-%@", fromCurrency, toCurrency];
    NSNumber *value = @(rate);
    
    [self.rateDictionary setObject:value forKey:key];
    
    
    NSNumber *invRate =@(1.0/rate);
    [self.rateDictionary setObject:invRate
                   forKey:[self keyFromCurrency:toCurrency
                                     toCurrency:fromCurrency]];
    
}



-(NSString *) keyFromCurrency:(NSString *) fromCurrency toCurrency:(NSString *) toCurrency{
    
    NSString *key = [NSString stringWithFormat:@"%@-%@", fromCurrency, toCurrency];
    return key;
}
@end
