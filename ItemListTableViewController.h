//
//  ItemListTableViewController.h
//  GroceryList03
//
//  Created by James O'Connor on 7/6/16.
//  Copyright © 2016 James O'Connor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddGroceryViewController.h"
#import "GroceryItem.h"
#import "GroceryCategory.h"

@interface ItemListTableViewController : UITableViewController {

    
}

@property (nonatomic, strong) GroceryCategory *selectedGroceryCategory;

@end
