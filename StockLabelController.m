//
//  StockLabelController.m
//  Stock app
//
//  Created by Khalid Mohamed on 10/17/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import "StockLabelController.h"

@interface StockLabelController ()

@end

@implementation StockLabelController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
-(BOOL) labelShouldReturn:(UILabel *) label {
    [self.delegate stockLabelControllerSendData:self.stockLabel.text];
    return [_stockLabel resignFirstResponder];
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
