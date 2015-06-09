//
//  MoneyTest.m
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/7/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ARFMoney.h"
#import "ARFBroker.h"

@interface MoneyTest : XCTestCase


@property (nonatomic, strong) ARFMoney *dollar1;
@property (nonatomic, strong) ARFMoney *dollar2;
@property (nonatomic, strong) ARFMoney *euro5;
@property (nonatomic, strong) ARFBroker * broker;

@end

@implementation MoneyTest

- (void)setUp {
    [super setUp];

    
    self.dollar1 = [ARFMoney dollarWithAmount:5];
    self.dollar2 = [ARFMoney dollarWithAmount:2];
    self.euro5 = [ARFMoney euroWithAmount:5];
    self.broker = [ARFBroker new];
}

- (void)tearDown {

    [super tearDown];
    
    _dollar1 = nil;
    _dollar2 = nil;
    _euro5 = nil;
    _broker = nil;
}


-(void) testHash{
    
    ARFMoney * money1 = [[ARFMoney alloc] initWithAmount:5 currency:@"EUR"];
    ARFMoney *money2 = [[ARFMoney alloc] initWithAmount:5 currency:@"EUR"];
    ARFMoney *money3 = [[ARFMoney alloc] initWithAmount:6 currency:@"EUR"];
    
    
    XCTAssertEqual([money1 hash], [money2 hash], "equal objects ough to have equal hash");
    
    XCTAssertNotEqual([money2 hash], [money3 hash], "differnt objects ough to have different hash");
    
}

-(void) testEquality{
    
    ARFMoney *euro = [ARFMoney euroWithAmount:5];
    ARFMoney *product = [euro times:2];
    ARFMoney *tenEuro = [ARFMoney euroWithAmount:10];
    XCTAssertEqualObjects(tenEuro, product, "10 has to be equal to 5*2");
    
    
    
    ARFMoney *dollar = [ARFMoney dollarWithAmount:5];
    ARFMoney *product1 = [dollar times:2];
    ARFMoney *tenDollar = [ARFMoney dollarWithAmount:10];
    XCTAssertEqualObjects(tenDollar, product1, "10 has to be equal to 5*2");

}

-(void)testPlus{
    
    ARFMoney *total = [self.dollar1 plus:self.dollar2];
    
    XCTAssertEqualObjects(total,[ARFMoney dollarWithAmount:7], "5 +2 has to equal 7");
    
}

-(void) testSimpleAdditionWithReduction{
    
    ARFMoney *sum = [self.dollar1 plus:self.dollar2];
    
    ARFMoney *reduced = [self.broker reduce:sum toCurrency:@"USD"];
    
    XCTAssertEqualObjects(sum, reduced, "Converting to the same currency has to be equal to the sum");
    
}


-(void) testConversion{
    
    [self.broker addRate:2 fromCurrency:@"USD" toCurrency:@"EUR"];
    
    ARFMoney *converted = [self.broker reduce:self.euro5 toCurrency:@"USD"];
    
    XCTAssertEqualObjects(converted, [ARFMoney dollarWithAmount:10], "5 Euros are equal to 10 dollars with 2/1 as conversion rate");
    
}

-(void) testHashStorage{
    
    NSInteger amount = 4;
    ARFMoney *money = [ARFMoney euroWithAmount:amount];
    
    XCTAssertEqual([[money amount] integerValue], 4, @"Hash shold be the same amount");
    
}

@end
