//
//  ViewController.m
//  HelloWorld
//
//  Created by Martha Katsiki on 10/2/16.
//  Copyright © 2016 Hello World Company. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *testLabel;

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

- (IBAction)testButtonTapped:(id)sender {
    self.testLabel.text = @"It worked!";
}


@end
