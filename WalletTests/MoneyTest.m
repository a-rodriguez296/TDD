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

@interface MoneyTest : XCTestCase

@end

@implementation MoneyTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testMoneyTimes{
    
    ARFMoney * money = [[ARFMoney alloc] initWithAmount:5];
    
    
    XCTAssertThrows([money times:5], "Money times should rise exception");
}





@end