//
//  AGTMoney.m
//  Wallet
//
//  Created by Fernando Rodríguez Romero on 01/06/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//


#import "AGTMoney.h"

@interface AGTMoney ()
@property (nonatomic) NSUInteger amount;
@end
@implementation AGTMoney

+(instancetype) dollarWithAmount:(NSUInteger) amount{
    
    AGTMoney *dollar = [[AGTMoney alloc] initWithAmount:amount
                                               currency:@"USD"];
    return dollar;
}


+(instancetype) euroWithAmount:(NSUInteger) amount{
    
    AGTMoney *euro = [[AGTMoney alloc] initWithAmount:amount
                                               currency:@"EUR"];
    return euro;

}

-(id) initWithAmount:(NSUInteger)amount
            currency:(NSString *)currency{
    
    if (self = [super init]) {
        _amount = amount;
        _currency = currency;
    }
    
    return self;

}

-(AGTMoney*) times:(NSUInteger)multiplier{
    
    return [[AGTMoney alloc]
            initWithAmount:_amount * multiplier
            currency:self.currency];
}



#pragma mark - Equality
-(BOOL)isEqual:(id)object{
    
    return [self amount] == [object amount];
}




@end
