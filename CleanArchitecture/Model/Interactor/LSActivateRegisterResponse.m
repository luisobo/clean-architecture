//
//  LSActivateRegisterResponse.m
//  CleanArchitecture
//
//  Created by Luis Solano Bonet on 14/01/13.
//  Copyright (c) 2013 Luis Solano Bonet. All rights reserved.
//

#import "LSActivateRegisterResponse.h"

@interface LSActivateRegisterResponse ()
@property (nonatomic, strong) dispatch_semaphore_t semaphore;
@end


@implementation LSActivateRegisterResponse
- (id)init {
    self = [super init];
    if (self) {
        _done = NO;
        _result = nil;
        _semaphore = dispatch_semaphore_create(0);
        
    }
    return self;
}

- (void)waitUntilIsDone {
    dispatch_semaphore_wait(self.semaphore, DISPATCH_TIME_FOREVER);
    NSLog(@"Done!");
}

- (void)markAsDone {
    dispatch_semaphore_signal(self.semaphore);
}

@end
