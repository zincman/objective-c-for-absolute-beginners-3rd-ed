//
//  BookDetailViewController.h
//  MyBookStore
//
//  Created by Derek Lu on 13/05/2017.
//  Copyright © 2017 Derek Lu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BookDetailViewController : UIViewController
@property (nonatomic, weak) IBOutlet UILabel *bookTitle;
@property (nonatomic, weak) IBOutlet UILabel *bookAuthor;
@property (nonatomic, weak) IBOutlet UILabel *bookInfo;
@end
