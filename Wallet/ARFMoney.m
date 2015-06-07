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

@property (nonatomic) NSInteger amount;

@end

@implementation ARFMoney

- (id)initWithAmount:(NSUInteger)amount
{
    self = [super init];
    if (self) {
        _amount = amount;
    }
    return self;
}

-(id) times:(NSUInteger) multiplier{
    
    return [self subclassResponsibility:_cmd];
}



#pragma mark Overwritten
-(NSString *)description{
    
    return [NSString stringWithFormat:@"<%@ $: %@>", [self class], @(self.amount)];
    
}


-(NSUInteger)hash{
    return self.amount;
    
}

@end
