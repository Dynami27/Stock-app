//
//  ViewController.m
//  Stock app
//
//  Created by Khalid Mohamed on 10/17/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
 [super viewDidLoad];
    
    NSArray *childViewControllers=self.childViewControllers;
    self.stocksViewTableViewController=childViewControllers[0];
    self.stocksViewTableViewController.delegate=self;
    
    self.stockLabelController=childViewControllers[1];
    self.stocksViewTableViewController.delegate=self;
    
}
-(void) stockLabelControllerSendData:(Stock *)stock {
    
}
-(void) stocksViewTableViewControllerDataSent:(Stock *)stock {
    
    self.stockLabelController.stockLabel.text= stock;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
