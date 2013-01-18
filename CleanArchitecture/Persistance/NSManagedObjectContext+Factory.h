//
//  NSManagedObjectContext+Factory.h
//  CleanArchitecture
//
//  Created by Luis Solano Bonet on 14/01/13.
//  Copyright (c) 2013 Luis Solano Bonet. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface NSManagedObjectContext (Factory)
+(NSManagedObjectContext*) managedObjectContextWithName:(NSString *)name storeType:(NSString *)storeType ;
@end

