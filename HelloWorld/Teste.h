//
//  Teste.h
//  HelloWorld
//
//  Created by Diogo Medeiros on 02/02/13.
//  Copyright (c) 2013 edu.self. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Teste : UIViewController <UITextFieldDelegate>
- (NSString* )testeMethod:(NSString* )value;
+ (NSString* )factoryClass:(NSString* )value;
@end
