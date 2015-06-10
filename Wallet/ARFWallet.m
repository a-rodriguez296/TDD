//
//  ARFWallet.m
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/8/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import "ARFWallet.h"
#import "ARFMoney.h"

@interface ARFWallet ()

@property (nonatomic, strong) NSMutableArray *moneys;

@end

@implementation ARFWallet


- (id)initWithAmount:(NSUInteger)amount currency:(NSString *) currency
{
    self = [super init];
    if (self) {
        
        _moneys = [@[] mutableCopy];
        [_moneys addObject:[[ARFMoney alloc] initWithAmount:amount currency:currency]];
    }
    return self;
}

-(id<ARFMoney>) times:(NSUInteger) multiplier{
    
    NSMutableArray *response = [@[] mutableCopy];

    for (ARFMoney *money in self.moneys) {
        [response addObject:[money times:multiplier]];
    }
    return self;
}

-(id<ARFMoney>) plus:(ARFMoney *) other{
    
    [self.moneys addObject:other];
    return self;
    
}
-(id<ARFMoney>) reduceToCurrency:(NSString *) currency withBroker:(ARFBroker *) broker{
    
    ARFMoney *result = [[ARFMoney alloc] initWithAmount:0 currency:currency];
    
    for (ARFMoney *money in self.moneys) {
        
        ARFMoney *plusOperand = [money reduceToCurrency:currency withBroker:broker];
        NSLog(@"%@", plusOperand);
        result =  [result plus:plusOperand];
    }
    return result;
}


-(NSString *)description{
    return [self.moneys componentsJoinedByString:@","];
}

@end
