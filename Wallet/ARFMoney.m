//
//  ARFMoney.m
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/7/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import "ARFMoney.h"
#import "NSObject+GNUStepAddons.h"
#import "ARFMoney-Private.h"


@implementation ARFMoney

+(id) euroWithAmount:(NSUInteger) amount{
    
    return [[ARFMoney alloc] initWithAmount:amount];
}


+(id) dollarWithAmount:(NSUInteger) amount{
    
    return [[ARFMoney alloc] initWithAmount:amount];
}


- (id)initWithAmount:(NSUInteger)amount
{
    self = [super init];
    if (self) {
        _amount = @(amount);
    }
    return self;
}

-(id) times:(NSUInteger) multiplier{
    
    return [self subclassResponsibility:_cmd];
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
