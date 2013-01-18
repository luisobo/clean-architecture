//
//  LSActivateRegister.h
//  CleanArchitecture
//
//  Created by Luis Solano Bonet on 14/01/13.
//  Copyright (c) 2013 Luis Solano Bonet. All rights reserved.
//

#import <Foundation/Foundation.h>
@class LSActivateRegisterResponse;

@interface LSActivateRegister : NSObject
- (LSActivateRegisterResponse *)activateRegisterWithStoreName:(NSString *)storeName login:(NSString *)login password:(NSString *)password registerNumber:(NSUInteger)registerNumber;
@end
