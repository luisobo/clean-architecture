//
//  LSActivateRegisterResponse.h
//  CleanArchitecture
//
//  Created by Luis Solano Bonet on 14/01/13.
//  Copyright (c) 2013 Luis Solano Bonet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSActivateRegisterResponse : NSObject
@property (nonatomic, assign, getter = isDone) BOOL done;
@property (nonatomic, strong) NSObject *result;
- (void)waitUntilIsDone;
- (void)markAsDone;
@end
