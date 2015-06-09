//
//  ARFBroker.h
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/8/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ARFMoney.h"

@interface ARFBroker : NSObject

-(ARFMoney *) reduce:(id<ARFMoney>) sum toCurrency:(NSString *) currency;

-(void) addRate:(NSInteger) rate fromCurrency:(NSString *) currency toCurrency:(NSString *) currency;


@end
