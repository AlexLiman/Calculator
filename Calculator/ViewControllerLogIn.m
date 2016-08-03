//
//  ViewControllerLogIn.m
//  Calculator
//
//  Created by Admin on 8/3/16.
//  Copyright © 2016 lindeman. All rights reserved.
//

#import "ViewControllerLogIn.h"
#import "CCTextFieldEffects.h"

@interface ViewControllerLogIn ()
@property (strong, nonatomic) HoshiTextField *hoshiTextField;
@end

@implementation ViewControllerLogIn

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Do any additional setup after loading the view, typically from a nib.
    // Recommended frame height is around 70.
    self.hoshiTextField = [[HoshiTextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.view.frame) / 2 - 150,
                                                                           CGRectGetMaxY(self.view.frame) / 2 - 150,
                                                                           CGRectGetWidth(self.view.frame),
                                                                           300)];
    
    self.hoshiTextField.placeholder = @"Enter the number";
    
    // The size of the placeholder label relative to the font size of the text field, default value is 0.65
    self.hoshiTextField.placeholderFontScale = 0.7f;
    
    // The color of the inactive border, default value is R185 G193 B202
    self.hoshiTextField.borderInactiveColor = [UIColor blackColor];
    
    // The color of the active border, default value is R106 B121 B137
    self.hoshiTextField.borderActiveColor = [UIColor redColor];
    
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
