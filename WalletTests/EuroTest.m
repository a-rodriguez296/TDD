//
//  EuroTest.m
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/7/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ARFEuro.h"


@interface EuroTest : XCTestCase

@end

@implementation EuroTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testEuroTimes{

    ARFEuro * euro = [[ARFEuro alloc] initWithAmount:5];
    ARFEuro *product = [euro times:5];
    
    
    XCTAssertEqual(25, product.amount, "Euro with amount 5 times 5 has to be 25");
}


@end
