//
//  Bookstore.m
//  MyBookStore
//
//  Created by Derek Lu on 12/05/2017.
//  Copyright © 2017 Derek Lu. All rights reserved.
//

#import "Bookstore.h"
#import "Book.h"

@implementation Bookstore

- (instancetype)init
{
    self = [super init];    // Whether self initialized by super is the instance of Bookstore or super class
    if (self) {
        self.books = [NSMutableArray new];
        
//        Add book requires an array of dictionaries. Each element of the
//        array contains a dictionary that describes a book.
        NSArray *arrayOfBooks = @[
            @{
                @"title": @"Object-C for Absolute Beginners",
                @"author": @"Bennett, Fisher and lees",
                @"description": @"iOS Programming made easy."},

            @{
                @"title": @"A Farewell To Arms",
                @"author": @"Ernest Hemingway",
                @"description": @"The story of an affair between"
                " an English nurse and an"
                " American soldier on the Italian"
                " front during World War I."},
        ];
        [self addBooks:arrayOfBooks];
    }
    return self;
}

- (void)addBooks:(NSArray *)bookArray
{
    for (NSDictionary *bookInfo in bookArray){
        Book *newBook;
        
        newBook = [Book new];
        newBook.title = bookInfo[@"title"];
        newBook.author = bookInfo[@"author"];
        newBook.info = bookInfo[@"description"];
        
        [self.books addObject:newBook];
    }
}

- (NSInteger)numberOfBooks
{
    return self.books.count;
}



@end
