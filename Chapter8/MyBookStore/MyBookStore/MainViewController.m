//
//  MainViewController.m
//  MyBookStore
//
//  Created by Derek Lu on 12/05/2017.
//  Copyright © 2017 Derek Lu. All rights reserved.
//

#import "MainViewController.h"
#import "Bookstore.h"
#import "Book.h"
#import "BookDetailViewController.h"

// extend the class with private properties
@interface MainViewController ()
@property (nonatomic, strong) Bookstore *theBookstore;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.theBookstore = [Bookstore new];
    self.title = @"My Bookstore";
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.theBookstore numberOfBooks];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //
    // A UITableViewCell is a row in the UITableView. We want to display
    // a book title in each row. This method is called for every book
    // in the bookstore (see tableView:numberOfRowsInSection:). That method
    // returns the number of rows that the UITableView should show - this
    // is the number of books in the Bookstore object.
    //
    // We start by getting the cell from our Main.storyboard file. This is
    // the UITableViewCell "Identifier" found in the Storyboard.
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BookTitleRow" forIndexPath:indexPath];
    
    //
    // Get the book in the Bookstore. The indexPath.row is set to the row
    // we are going to display.
    Book *book = self.theBookstore.books[indexPath.row];
    
    //
    // Once we have the book, we want to show its title in the UITableViewCell.
    // There is a titleLabel already built in to the UITableViewCell so we use
    // that. The titleLabel has a text attribute we can set to an NSString.
    cell.textLabel.text = book.title;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"BookDetailSegue"]) {
        // Get the new view controller using [segue destinationViewController].
        BookDetailViewController *detailViewController = segue.destinationViewController;
        [detailViewController view];
        
        // Pass the selected object to the new view controller.
        NSIndexPath *selectedRow = [self.tableView indexPathForSelectedRow];
        
        Book *selectedBook = self.theBookstore.books[selectedRow.row];
        
        detailViewController.bookTitle.text = selectedBook.title;
        detailViewController.bookAuthor.text = selectedBook.author;
        detailViewController.bookInfo.text = selectedBook.info;
        
        detailViewController.bookInfo.numberOfLines = 0;
    }
    
}


@end
