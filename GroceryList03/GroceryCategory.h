//
//  GroceryCategory.h
//  GroceryList03
//
//  Created by James O'Connor on 7/5/16.
//  Copyright © 2016 James O'Connor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GroceryCategory : NSObject

@property (nonatomic, copy) NSString *categoryName;
@property (nonatomic, strong) NSMutableArray *groceryItems;

@end
