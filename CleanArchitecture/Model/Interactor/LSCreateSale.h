//
//  LSCreateSale.h
//  CleanArchitecture
//
//  Created by Luis Solano Bonet on 14/01/13.
//  Copyright (c) 2013 Luis Solano Bonet. All rights reserved.
//

#import <Foundation/Foundation.h>
@class StockItem;
@class LSFinalizeSale;
@class Sale;

@interface LSCreateSale : NSObject

@property (nonatomic, strong, readonly) NSArray *stockItems;
@property (nonatomic, strong, readonly) Sale *sale;
@property (nonatomic, strong, readonly) NSArray *soldItems;
@property (nonatomic, assign, getter = isTaxEnabled) BOOL taxEnabled;

- (void)addStockItem:(StockItem *)stockItem withQuantity:(NSUInteger)quantity;
- (void)deleteSoldItemAtIndex:(NSUInteger)index;
- (void)applyAmountDiscount:(NSNumber *)amount toSoldItemAtIndex:(NSUInteger)index;
- (void)toggleTax;

- (LSFinalizeSale *)finalizeSale;

@end
