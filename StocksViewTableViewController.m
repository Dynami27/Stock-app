//
//  StocksViewTableViewController.m
//  Stock app
//
//  Created by Khalid Mohamed on 10/17/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import "StocksViewTableViewController.h"

@interface StocksViewTableViewController ()

@end

@implementation StocksViewTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    stocks = [NSMutableArray array];
    
    Stock *stock1=[[Stock alloc]init];
    stock1.name=@"Google";
    [stocks addObject:stock1];
    
    Stock *stock2=[[Stock alloc]init];
    stock2.name=@"Facebook";
    [stocks addObject:stock2];
    
    
    Stock *stock3=[[Stock alloc]init];
    stock3.name=@"Twitter";
    [stocks addObject:stock3];
    
    Stock *stock4=[[Stock alloc]init];
    stock4.name=@"Facebook";
    [stocks addObject:stock4];
    
    
    
   // [stocks addObject:stock1];    stocks=[[NSMutableArray alloc]init];
   // [stocks addObject:@"Google"];
  //  [stocks addObject:@"Facebook"];
  //  [stocks addObject:@"Twitter"];
  //  [stocks addObject:@"Tesla"];
    
    

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return stocks.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MainCell" forIndexPath:indexPath];
    
    Stock *stock = stocks [indexPath.row];
    
    cell.textLabel.text=stock.name;
    
    return cell;
}
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSMutableArray *stock= stocks[indexPath.row];
    
    [self.delegate stocksViewTableViewControllerDataSent:stock];
    
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

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
