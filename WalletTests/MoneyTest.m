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




@end
