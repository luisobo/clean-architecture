//
//  StockItem.h
//  CleanArchitecture
//
//  Created by Luis Solano Bonet on 14/01/13.
//  Copyright (c) 2013 Luis Solano Bonet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface StockItem : NSManagedObject

@property (nonatomic, retain) NSString * desc;
@property (nonatomic, retain) NSDecimalNumber * price;

@end
