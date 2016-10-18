//
//  StocksViewTableViewController.h
//  Stock app
//
//  Created by Khalid Mohamed on 10/17/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "stock.h"
@protocol stocksViewTableViewControllerDelegate <NSObject>
-(void) stocksViewTableViewControllerDataSent:(Stock *) stock;
@end

@interface StocksViewTableViewController : UITableViewController

    //NSMutableArray *stocks;
{
 NSMutableArray *stocks;
}
@property (nonatomic,weak)id<stocksViewTableViewControllerDelegate> delegate;

@end
