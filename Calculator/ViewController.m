//
//  ViewController.m
//  Calculator
//
//  Created by lindeman on 03.08.16.
//  Copyright © 2016 lindeman. All rights reserved.
//

#import "ViewController.h"
#import "CCTextFieldEffects.h"

@interface ViewController ()
@property (strong, nonatomic) HoshiTextField *hoshiTextField;
@property (weak, nonatomic) IBOutlet UIView *viewForTextLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // Recommended frame height is around 70.
    self.hoshiTextField = [[HoshiTextField alloc] initWithFrame:CGRectMake(6, -10, CGRectGetWidth(self.view.frame) - 12, 70)];
    
    self.hoshiTextField.placeholder = @"Enter the number";
    
    // The size of the placeholder label relative to the font size of the text field, default value is 0.65
    self.hoshiTextField.placeholderFontScale = 0.65f;
    
    // The color of the inactive border, default value is R185 G193 B202
    self.hoshiTextField.borderInactiveColor = [UIColor blackColor];
    
    // The color of the active border, default value is R106 B121 B137
    self.hoshiTextField.borderActiveColor = [UIColor purpleColor];
    
    // The color of the placeholder, default value is R185 G193 B202
    self.hoshiTextField.placeholderColor = [UIColor blackColor];
    
    // The color of the cursor, default value is R89 G95 B110
    self.hoshiTextField.cursorColor = [UIColor redColor];
    
    // The color of the text, default value is R89 G95 B110
    self.hoshiTextField.textColor = [UIColor blackColor];
    
    // The block excuted when the animation for obtaining focus has completed.
    // Do not use textFieldDidBeginEditing:
    self.hoshiTextField.didBeginEditingHandler = ^{
        // ...
    };
    
    // The block excuted when the animation for losing focus has completed.
    // Do not use textFieldDidEndEditing:
    self.hoshiTextField.didEndEditingHandler = ^{
        // ...
    };
    
    [self.viewForTextLabel addSubview:self.hoshiTextField];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
