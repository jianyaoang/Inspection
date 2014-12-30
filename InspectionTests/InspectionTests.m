//
//  InspectionTests.m
//  InspectionTests
//
//  Created by Jian Yao Ang on 12/30/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface InspectionTests : XCTestCase
@property (strong, nonatomic) ViewController *vc;
@end

@interface ViewController (test)
-(NSString*)reverseThisString:(NSString*)stringToBeReversed;
-(float)addThisNumber:(float)firstNumber withSecondNumber:(float)secondNumber;
@end


@implementation InspectionTests

- (void)setUp {
    [super setUp];
    self.vc = [ViewController new];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void)testSummationOfTwoNumbers
{
    float firstNumber = 10;
    float secondNumber = 20;
    
    [self.vc addThisNumber:firstNumber withSecondNumber:secondNumber];
    
    float expectedSummationResult = 30;
    
    XCTAssertEqual(expectedSummationResult, firstNumber+secondNumber);
}

-(void)testReverseString
{
    NSString *theString = @"ReverseThisString";
    
    NSString *reversedTheString = [self.vc reverseThisString:theString];
    
    NSString *expectedReversedString = @"gnirtSsihTesreveR";
    
    XCTAssertEqualObjects(expectedReversedString, reversedTheString, @"Reversed string didn't meet expected result");
}



@end
