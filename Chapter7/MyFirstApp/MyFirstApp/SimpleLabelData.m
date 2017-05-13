//
//  SimpleLabelData.m
//  MyFirstApp
//
//  Created by Derek on 12/05/2017.
//  Copyright © 2017 Derek Lu. All rights reserved.
//

#import "SimpleLabelData.h"

@implementation SimpleLabelData

+ (instancetype)simpleLabelDataWithTitle:(NSString *)initialTitle addValue:(NSString *)initialValue
{
    SimpleLabelData *newLabel = [self new];
    newLabel.title = initialTitle;
    newLabel.value = initialValue;
    
    return newLabel;
}

- (NSString *)combinedString
{
    NSMutableString *newString = [NSMutableString new];
    [newString appendString: self.title];
    [newString appendString: @": "];
    [newString appendString: self.value];
    
    return [NSString stringWithString:newString];
}

@end
