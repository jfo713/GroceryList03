//
//  AddGroceryViewController.m
//  GroceryList03
//
//  Created by James O'Connor on 7/6/16.
//  Copyright © 2016 James O'Connor. All rights reserved.
//

#import "AddGroceryViewController.h"

@interface AddGroceryViewController ()

@property (nonatomic, weak) IBOutlet UITextField *addGroceryTextField;

@end

@implementation AddGroceryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction) save {
    
    NSString *groceryName = [NSString stringWithFormat:@"%@", self.addGroceryTextField.text];
    [self.delegate addGroceryDidSave:groceryName];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


-(IBAction) close {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
