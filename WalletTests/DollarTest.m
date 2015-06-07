//
//  DollarTest.m
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/5/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ARFDollar.h"

@interface DollarTest : XCTestCase

@end

@implementation DollarTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testDollarTimes{

    ARFDollar *dollar = [[ARFDollar alloc] initWithAmount:5];
    
    ARFDollar *product = [dollar times:5];
    
    XCTAssertEqual(25, product.amount, "Dollar with amount 5 times 5 has to be 25");
}


-(void) testEquality{
    
    ARFDollar *dollar = [[ARFDollar alloc] initWithAmount:5];
    ARFDollar *product = [dollar times:2];
    
    ARFDollar *tenDollar = [[ARFDollar alloc] initWithAmount:10];
    
    XCTAssertEqualObjects(tenDollar, product, "10 has to be equal to 5*2");
    
    
}

@end
