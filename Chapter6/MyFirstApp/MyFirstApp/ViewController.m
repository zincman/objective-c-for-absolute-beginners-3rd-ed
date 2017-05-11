//
//  ViewController.m
//  MyFirstApp
//
//  Created by Derek Lu on 11/05/2017.
//  Copyright © 2017 Derek Lu. All rights reserved.
//

#import "ViewController.h"

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
    [self.nameLabel setText:@"My name is Awesome!"];
}


@end
