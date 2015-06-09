//
//  ARFWalletTests.m
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/8/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ARFMoney.h"
#import "ARFBroker.h"
#import "ARFWallet.h"

@interface ARFWalletTests : XCTestCase


@property (nonatomic, strong) ARFMoney *oneEuro;
@property (nonatomic, strong) ARFBroker *emptyBroker;

@end

@implementation ARFWalletTests

- (void)setUp {
    [super setUp];

    
    self.oneEuro = [ARFMoney euroWithAmount:1];
    self.emptyBroker = [ARFBroker new];
    
}

- (void)tearDown {

    [super tearDown];
    
    self.oneEuro  = nil;
    self.emptyBroker = nil;
    
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}


-(void) testAdditionWithReduction{
    
    
    [self.emptyBroker addRate:2 fromCurrency:@"EUR" toCurrency:@"USD"];
    
    
    ARFWallet *wallet = [[[ARFWallet alloc] initWithAmount:40 currency:@"EUR"] plus:[ARFMoney dollarWithAmount:20]];
    
    XCTAssertEqualObjects([self.emptyBroker reduce:wallet toCurrency:@"USD"], [ARFMoney dollarWithAmount:100], @"Reduced value should be equal to total");
}

@end
