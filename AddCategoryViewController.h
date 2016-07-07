//
//  AddCategoryViewController.h
//  GroceryList03
//
//  Created by James O'Connor on 7/5/16.
//  Copyright © 2016 James O'Connor. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddCategoryDelegate

-(void) addCategoryDidSave:(NSString *) categoryName;

@end

@interface AddCategoryViewController : UIViewController {
    
}

@property (nonatomic, weak) id<AddCategoryDelegate>delegate;

@end
