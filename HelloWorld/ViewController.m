//
//  ViewController.m
//  HelloWorld
//
//  Created by Diogo Medeiros on 15/01/13.
//  Copyright (c) 2013 edu.self. All rights reserved.
//

#import "ViewController.h"
#import "Teste.h"


@implementation ViewController
@synthesize teste = _teste;
@synthesize label2;
@synthesize userName = _userName;
@synthesize textField;
@synthesize label;

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    //NSMutableArray *array = [NSMutableArray arrayWithCapacity:1];
    //[array insertObject:@"teste" atIndex:0];
    
    
    //for (id print in array)
    //{
    //    NSLog(print);
    //}
    
    //[array enumerateObjectsUsingBlock: ^(id obj, NSUInteger index, BOOL *stop){
      //  if ([obj isEqual: @"teste"]) {
        //    NSLog(obj);
          //  *stop = YES;
       // }
        
   // }];

    //NSString *teste = [[Teste alloc] testeMethod:@"Teste"];
    //self.teste.text = teste ;
    
    //self.teste.text = [self sameshit:@"oladfg"];
    
    //Teste *testa = [[Teste alloc]init];
    //self.teste.text = [testa testeMethod:@"Testea"];
    
    NSString *teste = [Teste factoryClass:@"badjoras"];
    self.teste.text = teste;
    
   // self.teste.text = [Teste factoryClass:@"badjoras"];
    
   // self.teste.text = [self anotherSameShit:@"diogo"];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTextField:nil];
    [self setLabel:nil];
    [self setLabel2:nil];
    [self setTeste:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)changeGreeting:(id)sender {
    self.userName = self.textField.text;
    NSString *nameString = self.userName;
    if ([nameString length] == 0)
    {
        nameString = @"World";
    }
    
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    self.label.text = greeting;
    
}

- (id)sameshit:(NSString *)printString {
    return printString;
    
}

- (NSString *)anotherSameShit:(NSString *)printString
{
    NSString *variable;
 //   variable = [[NSString alloc] initWithFormat:@"%@ : this is easy shit!", printString];
    variable = [NSString stringWithFormat:@"%@ : this is easy shit!", printString];
    return variable;
}

-(BOOL)textFieldShouldReturn:(UITextField *) theTextField
{
    if (theTextField == self.textField)
    {
        [theTextField resignFirstResponder];
    }
    return YES;
}
@end
