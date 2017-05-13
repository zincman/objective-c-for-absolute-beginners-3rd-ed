//
//  ViewController.m
//  MyFirstApp
//
//  Created by Derek Lu on 11/05/2017.
//  Copyright © 2017 Derek Lu. All rights reserved.
//

#import "ViewController.h"
#import "SimpleLabelData.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showName:(id)sender {
    SimpleLabelData *one = [SimpleLabelData simpleLabelDataWithTitle:@"First Name" addValue:@"John"];
    
    self.firstLabel.text = [one combinedString];
    
    SimpleLabelData *two = [SimpleLabelData simpleLabelDataWithTitle:@"Last Name" addValue:@"Snow"];
    
    self.secondLabel.text = [two combinedString];
    
    SimpleLabelData *three = [SimpleLabelData simpleLabelDataWithTitle:@"Age" addValue:@"Unknown"];
    
    self.thirdLabel.text = [three combinedString];
}

@end
