//
//  CategoriesTableViewController.m
//  GroceryList03
//
//  Created by James O'Connor on 7/5/16.
//  Copyright © 2016 James O'Connor. All rights reserved.
//

#import "CategoriesTableViewController.h"

@interface CategoriesTableViewController () <AddCategoryDelegate>

@end

@implementation CategoriesTableViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*{
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        
        NSData *groceryData = [NSKeyedArchiver archivedDataWithRootObject:groceryCategoryArray];
        
        [userDefaults setObject:groceryData forKey:@"getGroceryData"];
        
        [userDefaults synchronize];
    }
    
    {
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        
        NSData *groceryData = [userDefaults valueForKey:@"getGroceryData"];
        
        groceryCategoryArray = [NSKeyedUnarchiver unarchiveObjectWithData:groceryData];
        
    }*/
    
    groceryCategoryArray = [NSMutableArray array];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return groceryCategoryArray.count;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([segue.identifier isEqualToString:@"AddCategorySegue"]) {
        
        UINavigationController *navigationController = (UINavigationController *) segue.destinationViewController;
        
        AddCategoryViewController *addCategoryViewController = (AddCategoryViewController *)navigationController.viewControllers.firstObject;
        
        addCategoryViewController.delegate =self;
        
    }
    
    /*else if([segue.identifier isEqualToString:@"ItemListSegue"]) {
        
        UINavigationController *navigationController = (UINavigationController *) segue.destinationViewController;
        
        ItemListTableViewController *itemListTableViewController = (ItemListTableViewController*) navigationController.viewControllers.firstObject;
        
        } */
    
}

-(void) addCategoryDidSave:(NSString *)categoryName{
    
    NSLog(@"%@", categoryName);
    
    GroceryCategory *groceryCategory = [[GroceryCategory alloc] init];
    groceryCategory.categoryName = categoryName;
    groceryCategory.groceryItems = [NSMutableArray array];
    
    [groceryCategoryArray addObject:groceryCategory];
    
    [self.tableView reloadData];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CategoryCell" forIndexPath:indexPath];
    
    GroceryCategory *groceryCategory = groceryCategoryArray[indexPath.row];
    
    cell.textLabel.text = groceryCategory.categoryName;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        
        [groceryCategoryArray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
        
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
