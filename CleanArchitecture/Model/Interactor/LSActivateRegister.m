//
//  LSActivateRegister.m
//  CleanArchitecture
//
//  Created by Luis Solano Bonet on 14/01/13.
//  Copyright (c) 2013 Luis Solano Bonet. All rights reserved.
//

#import "LSActivateRegister.h"
#import "LSActivateRegisterResponse.h"

@implementation LSActivateRegister
- (LSActivateRegisterResponse *)activateRegisterWithStoreName:(NSString *)storeName login:(NSString *)login password:(NSString *)password registerNumber:(NSUInteger)registerNumber {
    
    __block LSActivateRegisterResponse *response = [LSActivateRegisterResponse new];

    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [NSThread sleepForTimeInterval:3];
        response.done = YES;
        response.result = [NSObject new];
        [response markAsDone];
    });
    
    return response;
}
@end
