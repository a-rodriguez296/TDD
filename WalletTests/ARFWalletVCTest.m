//
//  ARFWalletVCTest.m
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/29/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ARFWalletViewController.h"
#import "ARFWallet.h"
#import <XCTest/XCTest.h>

@interface ARFWalletVCTest : XCTestCase

@property (nonatomic, strong) ARFWalletViewController *walletVC;
@property (nonatomic, strong) ARFWallet *wallet;

@end

@implementation ARFWalletVCTest

- (void)setUp {
    [super setUp];

    self.wallet = [[ARFWallet alloc] initWithAmount:10 currency:@"USD"];
    self.walletVC = [[ARFWalletViewController alloc] initWithWallet:self.wallet];

    
}

- (void)tearDown {
    [super tearDown];
    self.walletVC = nil;
    self.wallet = nil;
}

- (void)testNumberOfSectionsExample {
    NSUInteger numSections = [self.walletVC numberOfSectionsInTableView:self.walletVC.tableView];
    XCTAssertEqual(1, numSections, @"La tabla solo tiene que tener una sección");
}

-(void) testNumberOfRowsPlusOne{
    NSUInteger numRows = [self.walletVC.tableView numberOfRowsInSection:0];
    XCTAssertEqual(2, numRows, @"El número de filas debe ser igual al número de moneys +1");
}

@end
