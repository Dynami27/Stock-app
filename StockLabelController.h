//
//  StockLabelController.h
//  Stock app
//
//  Created by Khalid Mohamed on 10/17/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol StockLabelControllerDelegate<NSObject>

-(void) stockLabelControllerSendData:(NSString *) text;
@end

@interface StockLabelController : UIViewController

@property (nonatomic,weak) IBOutlet UILabel *stockLabel;
@property (nonatomic, weak) id<StockLabelControllerDelegate> delegate;

@end
