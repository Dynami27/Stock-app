//
//  ViewController.h
//  Stock app
//
//  Created by Khalid Mohamed on 10/17/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StocksViewTableViewController.h"
#import "StockLabelController.h"

@interface ViewController : UIViewController<StockLabelControllerDelegate,stocksViewTableViewControllerDelegate>
@property (nonatomic, strong)  StockLabelController *stockLabelController;
@property (nonatomic,strong)   StocksViewTableViewController *stocksViewTableViewController;


@end

