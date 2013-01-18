//
//  SoldItem.h
//  CleanArchitecture
//
//  Created by Luis Solano Bonet on 14/01/13.
//  Copyright (c) 2013 Luis Solano Bonet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Sale, StockItem;

@interface SoldItem : NSManagedObject

@property (nonatomic, retain) NSDecimalNumber * quantity;
@property (nonatomic, retain) Sale *sale;
@property (nonatomic, retain) StockItem *stockItems;

@end
