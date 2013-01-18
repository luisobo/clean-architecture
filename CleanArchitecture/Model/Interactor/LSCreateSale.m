#import "LSCreateSale.h"
#import "Sale.h"
#import "NSManagedObjectContext+Factory.h"
#import "StockItem.h"

@interface LSCreateSale ()
@property (nonatomic, strong) Sale *sale;
@property (nonatomic, strong) NSManagedObjectContext *context;
@end

@implementation LSCreateSale

- (id)init {
    self = [super init];
    if (self) {
        _context = [NSManagedObjectContext managedObjectContextWithName:@"Register" storeType:NSSQLiteStoreType];
        
        StockItem *stockItem = [NSEntityDescription insertNewObjectForEntityForName:@"StockItem" inManagedObjectContext:_context];
        stockItem.desc = @"Latte";
        stockItem.price = [NSDecimalNumber decimalNumberWithString:@"4.95"];
        NSError *error = nil;
        [_context save:&error];
        NSAssert(!error, @"Error at saving mock StockItem");
    }
    return self;
}

- (void)addStockItem:(StockItem *)stockItem withQuantity:(NSUInteger)quantity {
}

- (void)deleteSoldItemAtIndex:(NSUInteger)index {
    
}
- (void)applyAmountDiscount:(NSNumber *)amount toSoldItemAtIndex:(NSUInteger)index {
    
}
- (void)toggleTax {
    
}

- (NSArray *)stockItems {
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"StockItem"];
    NSError *error = nil;
    NSArray *result = [self.context executeFetchRequest:request error:&error];
    NSAssert(!error, @"Error at fetching StockItems");
    return result;
}

- (LSFinalizeSale *)finalizeSale {
    return nil;
}


@end
