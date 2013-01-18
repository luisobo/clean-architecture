//
//  LSArrayTableViewDelegate.m
//  CleanArchitecture
//
//  Created by Luis Solano Bonet on 14/01/13.
//  Copyright (c) 2013 Luis Solano Bonet. All rights reserved.
//

#import "LSArrayTableViewDelegate.h"

@interface LSArrayTableViewDelegate ()
@property (nonatomic, strong) NSArray *array;
@end

@implementation LSArrayTableViewDelegate
- (id)initWithArray:(NSArray *)array {
    self = [super init];
    if (self) {
        _array = array;
    }
    return self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellId = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    if (self.cellCustomizer) {
        self.cellCustomizer(cell, self.array[indexPath.row]);
    }
    
    return cell;
}
@end
