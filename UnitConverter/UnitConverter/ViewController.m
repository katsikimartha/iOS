//
//  ViewController.m
//  UnitConverter
//
//  Created by Martha Katsiki on 10/10/16.
//  Copyright © 2016 Hello World Company. All rights reserved.
//

#import "ViewController.h"

double convertCelsiusToKelvin(double celsius){
    double kelvin;
    
    kelvin = celsius + 273.15;
    return kelvin;
}

double convertCelsiusToFahrenheit(double celsius){
    double fahrenheit;
    
    fahrenheit = 1.8* celsius+32;
    return fahrenheit;
}

double convertCelsiusToRankine(double celsius){
    double rankine;
    
    rankine = 1.8* (celsius+273.15);
    return rankine;
}

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *inputField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;
@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController

- (IBAction)updateButton:(id)sender {
    NSMutableString *buf = [NSMutableString new];
    
    double userInput = [self.inputField.text doubleValue];
    
    if(self.segmentController.selectedSegmentIndex==0) {
        double unitTwoValue = convertCelsiusToKelvin(userInput);
        
        [buf appendString: [@(unitTwoValue) stringValue]];
    } else if(self.segmentController.selectedSegmentIndex==1) {
        double unitTwoValue = convertCelsiusToFahrenheit(userInput);
        
        [buf appendString: [@(unitTwoValue) stringValue]];
    } else {
        double unitTwoValue = convertCelsiusToRankine(userInput);
        
        [buf appendString: [@(unitTwoValue) stringValue]];
    }
    
    self.outputField.text = buf;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
