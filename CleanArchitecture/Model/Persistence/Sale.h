//
//  Sale.h
//  CleanArchitecture
//
//  Created by Luis Solano Bonet on 14/01/13.
//  Copyright (c) 2013 Luis Solano Bonet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class SoldItem;

@interface Sale : NSManagedObject

@property (nonatomic, retain) NSOrderedSet *soldItems;
@end

@interface Sale (CoreDataGeneratedAccessors)

- (void)insertObject:(SoldItem *)value inSoldItemsAtIndex:(NSUInteger)idx;
- (void)removeObjectFromSoldItemsAtIndex:(NSUInteger)idx;
- (void)insertSoldItems:(NSArray *)value atIndexes:(NSIndexSet *)indexes;
- (void)removeSoldItemsAtIndexes:(NSIndexSet *)indexes;
- (void)replaceObjectInSoldItemsAtIndex:(NSUInteger)idx withObject:(SoldItem *)value;
- (void)replaceSoldItemsAtIndexes:(NSIndexSet *)indexes withSoldItems:(NSArray *)values;
- (void)addSoldItemsObject:(SoldItem *)value;
- (void)removeSoldItemsObject:(SoldItem *)value;
- (void)addSoldItems:(NSOrderedSet *)values;
- (void)removeSoldItems:(NSOrderedSet *)values;
@end
