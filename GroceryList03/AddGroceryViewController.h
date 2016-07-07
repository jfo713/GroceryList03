//
//  AddGroceryViewController.h
//  GroceryList03
//
//  Created by James O'Connor on 7/6/16.
//  Copyright © 2016 James O'Connor. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddGroceryDelegate

-(void) addGroceryDidSave:(NSString *) groceryName;

@end

@interface AddGroceryViewController : UIViewController {
    
}

@property (nonatomic, weak) id<AddGroceryDelegate> delegate;

@end
