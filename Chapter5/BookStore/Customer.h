//
//  Customer.h
//  BookStore
//
//  Created by Derek on 11/05/2017.
//  Copyright © 2017 Derek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Customer : NSObject {
    NSString *firstName;
    NSString *lastName;
    NSString *addressLine1;
    NSString *addressLine2;
    NSString *city;
    NSString *state;
    NSString *zip;
    NSString *phoneNumber;
    NSString *emailAddress;
    NSString *favoriteGenre;
}

- (NSArray *) listPurchaseHistory;

@end
