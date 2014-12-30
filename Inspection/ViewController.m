//
//  ViewController.m
//  Inspection
//
//  Created by Jian Yao Ang on 12/30/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}

-(float)addThisNumber:(float)firstNumber withSecondNumber:(float)secondNumber
{
    float totalNumber = firstNumber + secondNumber;
    NSLog(@"totalNumber : %.f", totalNumber);
    return totalNumber;

}


-(NSString*)reverseThisString:(NSString*)stringToBeReversed
{
    NSMutableString *reversedString = [NSMutableString string];
    NSInteger characterIndex = [stringToBeReversed length];
    
    while (characterIndex > 0)
    {
        characterIndex--;
        NSRange subStringRange = NSMakeRange(characterIndex, 1);
        [reversedString appendString:[stringToBeReversed substringWithRange:subStringRange]];
    }
    NSLog(@"reversedString : %@", reversedString);
    return reversedString;
}

@end
