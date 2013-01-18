//
//  LSArrayTableViewDelegate.h
//  CleanArchitecture
//
//  Created by Luis Solano Bonet on 14/01/13.
//  Copyright (c) 2013 Luis Solano Bonet. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^LSCellCustomizer)(UITableViewCell *cell, id item);

@interface LSArrayTableViewDelegate : NSObject
<UITableViewDataSource, UITableViewDelegate>

- (id)initWithArray:(NSArray *)array;
@property (nonatomic, copy) LSCellCustomizer cellCustomizer;
@end
