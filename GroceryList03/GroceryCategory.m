//
//  GroceryCategory.m
//  GroceryList03
//
//  Created by James O'Connor on 7/5/16.
//  Copyright © 2016 James O'Connor. All rights reserved.
//

#import "GroceryCategory.h"

@implementation GroceryCategory

-(instancetype) initWithCoder:(NSCoder *) coder {

    self = [super init];
    self.groceryItems = [coder decodeObjectForKey:@"groceryItems"];
    return self;

}

-(void) encodeWithCoder:(NSCoder *) coder {
    
    [coder encodeObject:self.groceryItems forKey:@"groceryItems"];
    
}

@end
