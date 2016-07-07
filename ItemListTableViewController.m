//
//  ItemListTableViewController.m
//  GroceryList03
//
//  Created by James O'Connor on 7/6/16.
//  Copyright © 2016 James O'Connor. All rights reserved.
//

#import "ItemListTableViewController.h"

@interface ItemListTableViewController () <AddGroceryDelegate>

@end

@implementation ItemListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = self.selectedGroceryCategory.categoryName;
    groceryItemsArray = [NSMutableArray array];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(IBAction) close {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
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

    return groceryItemsArray.count;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([segue.identifier isEqualToString:@"AddGrocerySegue"]) {
        
        UINavigationController *navigationController = (UINavigationController *) segue.destinationViewController;
        
        AddGroceryViewController *addGroceryViewController = (AddGroceryViewController *) navigationController.viewControllers.firstObject;
        
        addGroceryViewController.delegate =self;
        
        
    }
    
    
}

-(void) addGroceryDidSave:(NSString *)groceryName {
    
    NSLog(@"%@", groceryName);
    
    GroceryItem *groceryItem = [[GroceryItem alloc] init];
    groceryItem.itemName = groceryName;
    
    NSLog(@"%@", groceryItem.itemName);
    
    [groceryItemsArray addObject:groceryItem];
    
    NSLog(@"array: %@", groceryItemsArray);
    
    [self.tableView reloadData];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ItemCell" forIndexPath:indexPath];
    
    GroceryItem *groceryItem = groceryItemsArray[indexPath.row];
    cell.textLabel.text = groceryItem.itemName;
    
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
        
        [groceryItemsArray removeObjectAtIndex:indexPath.row];
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
