//
//  main.m
//  OCTypes
//
//  Created by Derek on 11/05/2017.
//  Copyright © 2017 Derek. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int firstNumber = 2;
        int secondNumber = 3;
        int totalSum = 0;
        firstNumber = firstNumber + 1;
        secondNumber = secondNumber + 1;
        totalSum = firstNumber + secondNumber;
        NSLog(@"The sum is: %d", totalSum);
    }
    return 0;
}
