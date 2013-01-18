//
//  LSViewController.m
//  CleanArchitecture
//
//  Created by Luis Solano Bonet on 14/01/13.
//  Copyright (c) 2013 Luis Solano Bonet. All rights reserved.
//

#import "LSViewController.h"
#import "LSCreateSale.h"
#import "StockItem.H"
#import "LSArrayTableViewDelegate.h"

@interface LSViewController ()
@property (nonatomic, strong) LSCreateSale *interactor;
@property (nonatomic, strong) LSArrayTableViewDelegate *stockItemsTableViewDelegate;

@property (nonatomic, strong) IBOutlet UITableView *stockItemstableView;
@end

@implementation LSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.interactor = [LSCreateSale new];
    self.stockItemsTableViewDelegate = [[LSArrayTableViewDelegate alloc] initWithArray:self.interactor.stockItems];
    self.stockItemstableView.dataSource = self.stockItemsTableViewDelegate;
    [self.stockItemsTableViewDelegate setCellCustomizer:^(UITableViewCell *cell, StockItem *stockItem) {
        cell.textLabel.text = stockItem.desc;
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
