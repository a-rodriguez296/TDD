//
//  ARFWalletViewController.m
//  Wallet
//
//  Created by Alejandro Rodriguez on 6/29/15.
//  Copyright (c) 2015 Agbo. All rights reserved.
//

#import "ARFWalletViewController.h"
#import "ARFWallet.h"

@interface ARFWalletViewController ()

@property(nonatomic, strong) ARFWallet *wallet;

@end

@implementation ARFWalletViewController




-(id) initWithWallet:(ARFWallet *) wallet{
    
    if (self = [super initWithNibName:nil bundle:nil]) {
        _wallet = wallet;
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.wallet.count +1;
}


@end
