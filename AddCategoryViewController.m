//
//  AddCategoryViewController.m
//  GroceryList03
//
//  Created by James O'Connor on 7/5/16.
//  Copyright © 2016 James O'Connor. All rights reserved.
//

#import "AddCategoryViewController.h"

@interface AddCategoryViewController ()

@property (nonatomic, weak) IBOutlet UITextField *addCategoryTextField;

@end

@implementation AddCategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction) save {
    
    NSString *categoryName = [NSString stringWithFormat:@"%@", self.addCategoryTextField.text];
    [self.delegate addCategoryDidSave:categoryName];
    NSLog(@"%@", categoryName);
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
