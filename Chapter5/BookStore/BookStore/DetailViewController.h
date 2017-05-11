//
//  DetailViewController.h
//  BookStore
//
//  Created by Derek on 11/05/2017.
//  Copyright © 2017 Derek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDate *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

