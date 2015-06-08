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

-(ARFMoney *) reduce:(ARFMoney *) sum toCurrency:(NSString *) currency{
    
    ARFMoney *result;
    
    if ([sum.currency isEqualToString:currency]) {
       result = sum;
    }
    else{
        //Construir la llave
        NSString *key = [NSString stringWithFormat:@"%@-%@", currency, sum.currency];
        
        //Obtener la conversion
        NSNumber *convertionRate = [self.rateDictionary objectForKey:key];
        
        if (convertionRate == nil) {
            [NSException raise:@"NilConversionException" format:@"No conversion rate from %@ to %@", sum.currency, currency];
        }
        else{
            
            NSUInteger amount = [convertionRate unsignedIntegerValue] * [[sum amount] unsignedIntegerValue];
            result = [[ARFMoney alloc] initWithAmount:amount currency:currency];
        }
    }
    return result;
}

-(void) addRate:(NSInteger) rate fromCurrency:(NSString *) fromCurrency toCurrency:(NSString *) toCurrency{
    
    NSString *key = [NSString stringWithFormat:@"%@-%@", fromCurrency, toCurrency];
    NSNumber *value = @(rate);
    
    [self.rateDictionary setObject:value forKey:key];
    
}

@end
