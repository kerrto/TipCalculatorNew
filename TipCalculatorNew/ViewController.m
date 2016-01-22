//
//  ViewController.m
//  TipCalculatorNew
//
//  Created by Kerry Toonen on 2016-01-22.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.billInput becomeFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    return YES;}


- (IBAction)calculateTip:(UIButton *)sender {
    if ([self.billInput.text containsString:@"\n"]) {
        self.tipAmount.text=@"";
    }
    self.billInputString=self.billInput.text;
    self.billInputDecimal=self.billInputString.floatValue;
    self.tipAmountDecimal=self.billInputDecimal*.15;
    self.tipAmountString=[NSString stringWithFormat:@"%.2f",self.tipAmountDecimal];
    NSLog(@"%@",self.tipAmountString);
    self.tipAmount.text=self.tipAmountString;
}

- (IBAction)customTipButton:(UIButton *)sender {
    if ([self.billInput.text containsString:@"\n"]) {
        self.tipAmount.text=@"";
    }
    self.billInputString=self.billInput.text;
    self.billInputDecimal=self.billInputString.floatValue;
    self.customTipString=self.customTip.text;
    self.customTipDecimal=self.customTipString.floatValue;
    self.decimalCustomTipDecimal=self.customTipDecimal*0.01;
    self.tipAmountDecimal=self.billInputDecimal * self.decimalCustomTipDecimal;
    self.tipAmountString=[NSString stringWithFormat:@"%.2f",self.tipAmountDecimal];
    NSLog(@"%@",self.tipAmountString);
    self.tipAmount.text=self.tipAmountString;
}

@end
