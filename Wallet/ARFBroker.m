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

@property (nonatomic, strong) NSMutableDictionary *rateDictionary;

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

-(id<ARFMoney>) reduce:(ARFMoney *) sum toCurrency:(NSString *) currency{
    
    ARFMoney *result;
    
    
    NSString *conversionKey = [self keyFromCurrency:sum.currency toCurrency:currency];
    double rate = [[self.rateDictionary objectForKey:conversionKey] doubleValue];
    
    
    
    if ([sum.currency isEqualToString:currency]) {
        result = sum;
    }
    else if (rate == 0){
        [NSException raise:@"NilConversionException" format:@"No conversion rate from %@ to %@", sum.currency, currency];
    }
    else{
        
        NSUInteger amount = rate * [sum.amount integerValue];
        result = [[ARFMoney alloc] initWithAmount:amount currency:currency];
        
    }
    return result;
}

-(void) addRate:(NSInteger) rate fromCurrency:(NSString *) fromCurrency toCurrency:(NSString *) toCurrency{
    
    NSString *key = [NSString stringWithFormat:@"%@-%@", fromCurrency, toCurrency];
    NSNumber *value = @(rate);
    
    [self.rateDictionary setObject:value forKey:key];
    
}



-(NSString *) keyFromCurrency:(NSString *) fromCurrency toCurrency:(NSString *) toCurrency{
    
    NSString *key = [NSString stringWithFormat:@"%@-%@", toCurrency, fromCurrency];
    return key;
}
@end
