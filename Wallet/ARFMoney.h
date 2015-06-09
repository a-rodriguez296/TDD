//
//  ARFMoney.h
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/7/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ARFMoney;
@class ARFBroker;

@protocol ARFMoney <NSObject>

- (id)initWithAmount:(NSUInteger)amount currency:(NSString *) currency;

-(id<ARFMoney>) times:(NSUInteger) multiplier;
-(id<ARFMoney>) plus:(ARFMoney *) other;

-(id<ARFMoney>) reduceToCurrency:(NSString *) currency withBroker:(ARFBroker *) broker;

@end


@interface ARFMoney : NSObject<ARFMoney>

@property (nonatomic, copy) NSString *currency;
@property (nonatomic, strong, readonly) NSNumber *amount;

+(id) euroWithAmount:(NSUInteger) amount;
+(id) dollarWithAmount:(NSUInteger) amount;




@end
