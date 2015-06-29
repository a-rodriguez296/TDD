//
//  ARFBrokerTests.m
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/26/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ARFMoney.h"
#import "ARFBroker.h"


#import <XCTest/XCTest.h>

@interface ARFBrokerTests : XCTestCase

@property (nonatomic, strong) ARFBroker *broker;

@end

@implementation ARFBrokerTests

- (void)setUp {
    [super setUp];
    
    self.broker = [ARFBroker new];
    

}

- (void)tearDown {
    [super tearDown];
    
    self.broker = nil;
}

- (void)testSimpleReduction{

    ARFMoney *sum = [[ARFMoney dollarWithAmount:5] plus:[ARFMoney dollarWithAmount:5]];
    ARFMoney * reduced = [self.broker reduce:sum toCurrency:@"USD"];
    
    XCTAssertEqualObjects(sum, reduced, @"Reducing currency to same currency should return the same object");
}


-(void) testReduction{
    
    [self.broker addRate: 2 fromCurrency:@"EUR" toCurrency:@"USD"];
    
    ARFMoney *dollars = [ARFMoney dollarWithAmount:10];
    ARFMoney *euros = [ARFMoney euroWithAmount:5];
    
    ARFMoney * reduced = [self.broker reduce:dollars toCurrency:@"EUR"];
    
    XCTAssertEqualObjects(reduced, euros, @"10 dollars equal 5€");
}


@end
