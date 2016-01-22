//
//  ViewController.h
//  TipCalculatorNew
//
//  Created by Kerry Toonen on 2016-01-22.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UILabel *tipAmount;
@property (strong, nonatomic) IBOutlet UITextField *billInput;
@property (strong, nonatomic) IBOutlet UITextField *customTip;

@property (strong, nonatomic) NSString * billInputString;
@property (assign) float billInputDecimal;
@property (assign) float customTipDecimal;
@property (assign) float decimalCustomTipDecimal;

@property (assign) float tipAmountDecimal;
@property (nonatomic, strong) NSString *tipAmountString;
@property (nonatomic, strong) NSString *customTipString;

- (IBAction)calculateTip:(UIButton *)sender;
- (IBAction)customTipButton:(UIButton *)sender;

@end

