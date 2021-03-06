//
//  AGTMoneyTests.m
//  Wallet
//
//  Created by Fernando Rodríguez Romero on 01/06/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

@import Foundation;
#import <XCTest/XCTest.h>
#import "AGTMoney.h"

@interface AGTMoneyTests : XCTestCase

@end

@implementation AGTMoneyTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void) testThatInitDoesNotRaiseException{
    
    
    XCTAssertNoThrow([AGTMoney dollarWithAmount:3]);
    XCTAssertNoThrow([AGTMoney euroWithAmount:3]);
    
}


-(void) testCurrency{
    
    AGTMoney *dollars = [AGTMoney dollarWithAmount:1];
    
    XCTAssertEqualObjects(@"USD", [dollars currency]);
    
    AGTMoney *euros = [AGTMoney euroWithAmount:1];
    
    XCTAssertEqualObjects(@"EUR", [euros currency]);

}


-(void) testMultiplication{
    
    
    AGTMoney *five = [AGTMoney euroWithAmount:5];
    AGTMoney *product = [five times: 2];
    XCTAssertEqualObjects(product, [AGTMoney euroWithAmount:10]);
    
    
    AGTMoney *fiveUSD = [AGTMoney dollarWithAmount:5];
    AGTMoney *productUSD = [fiveUSD times:2];
    
    XCTAssertEqualObjects(productUSD, [AGTMoney dollarWithAmount:10]);
    
}

-(void) testEquality{
    
    AGTMoney *five = [AGTMoney euroWithAmount:5];
    AGTMoney *otherFive = [AGTMoney euroWithAmount:5];
    
    XCTAssertEqualObjects(five, otherFive);
    
    
    AGTMoney *seven = [AGTMoney euroWithAmount:7];
    
    XCTAssertNotEqualObjects(seven, five);
    
    
}















@end
