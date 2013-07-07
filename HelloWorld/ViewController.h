//
//  ViewController.h
//  HelloWorld
//
//  Created by Diogo Medeiros on 15/01/13.
//  Copyright (c) 2013 edu.self. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)changeGreeting:(id)sender;
- (id)sameshit:(NSString *)printString;
- (NSString* )anotherSameShit:(NSString *)printString;
@property (weak, nonatomic) IBOutlet UILabel *teste;

@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (copy, nonatomic) NSString *userName;
@end
