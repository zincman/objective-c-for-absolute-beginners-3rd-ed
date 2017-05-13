//
//  SimpleLabelData.h
//  MyFirstApp
//
//  Created by Derek on 12/05/2017.
//  Copyright © 2017 Derek Lu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SimpleLabelData : NSObject

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *value;

+ (instancetype)simpleLabelDataWithTitle:(NSString *)title addValue:(NSString *)value;

- (NSString *)combinedString;

@end
