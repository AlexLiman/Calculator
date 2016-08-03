//
//  ViewController.m
//  Calculator
//
//  Created by lindeman on 03.08.16.
//  Copyright © 2016 lindeman. All rights reserved.
//

#import "ViewController.h"
#import "CCTextFieldEffects.h"
#import "HMSegmentedControl/HMSegmentedControl.h"

@interface ViewController () <UITextFieldDelegate>
@property (strong, nonatomic) HoshiTextField *hoshiTextField;
@property (weak, nonatomic) IBOutlet UIView *viewForTextLabel;
@property (weak, nonatomic) IBOutlet UIView *viewForSegmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *segmentLabel;
@property (weak, nonatomic) HMSegmentedControl *segmentedControl;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // Recommended frame height is around 70.
    self.hoshiTextField = [[HoshiTextField alloc] initWithFrame:CGRectMake(6, -10, CGRectGetWidth(self.view.frame) - 12, 70)];
    
    self.hoshiTextField.placeholder = @"Enter the number";
    
    // The size of the placeholder label relative to the font size of the text field, default value is 0.65
    self.hoshiTextField.placeholderFontScale = 0.9f;
    
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

    self.hoshiTextField.keyboardType = UIKeyboardTypeNumberPad;
    [self.viewForTextLabel addSubview:self.hoshiTextField];
     self.hoshiTextField.delegate = self;
    
    
    //Segmented Controll
    HMSegmentedControl *segmentedControl = [[HMSegmentedControl alloc] initWithSectionTitles:@[@"PALINDROME", @"FACTORIAL", @"PAIRS"]];
    segmentedControl.frame = CGRectMake(0,
                                        CGRectGetMaxY(self.viewForSegmentedControl.frame) - 115,
                                        CGRectGetWidth(self.view.frame),
                                        70);
    [segmentedControl addTarget:self action:@selector(segmentedControlChangedValue:) forControlEvents:UIControlEventValueChanged];
    segmentedControl.selectionIndicatorLocation = HMSegmentedControlSelectionIndicatorLocationDown;
    segmentedControl.backgroundColor = [UIColor colorWithRed: 74 / 255.f green: 84 / 255.f blue: 205 / 255.f alpha:1];
    segmentedControl.segmentWidthStyle = HMSegmentedControlSegmentWidthStyleFixed;
    segmentedControl.selectionStyle = HMSegmentedControlSelectionStyleBox;
    segmentedControl.selectionIndicatorColor = [UIColor redColor];
    segmentedControl.selectionIndicatorHeight = 2.f;
    segmentedControl.selectionIndicatorBoxOpacity = 0.f;
    
    NSDictionary *attrDictSelected = @{
                               NSFontAttributeName : [UIFont fontWithName:@"Arial" size:15.0],
                               NSForegroundColorAttributeName : [UIColor whiteColor]
                               };
    segmentedControl.selectedTitleTextAttributes = attrDictSelected;
    
    NSDictionary *attrDict = @{
                               NSFontAttributeName : [UIFont fontWithName:@"Arial" size:15.0],
                               NSForegroundColorAttributeName : [UIColor colorWithRed:230 / 255.f green:230 / 255.f blue:230 / 255.f alpha:1]
                               };
    
    segmentedControl.titleTextAttributes = attrDict;
    [self.viewForSegmentedControl addSubview:segmentedControl];
    self.segmentedControl = segmentedControl;

}

- (void) segmentedControlChangedValue:(UIControlEvents)event {

    switch (self.segmentedControl.selectedSegmentIndex) {
        case 0:
            self.hoshiTextField.placeholder = @"Enter the number";
            self.hoshiTextField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
            break;
        case 1:
            self.hoshiTextField.placeholder = @"Enter the number";
            self.hoshiTextField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
            break;
        case 2:
            self.hoshiTextField.placeholder = @"Enter the number(Example:12 34 45 32 12 45 32 4)";
            self.hoshiTextField.keyboardType = UIKeyboardTypeDefault;
            break;
            
        default:
            break;
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    return [textField resignFirstResponder];
    
}



@end
