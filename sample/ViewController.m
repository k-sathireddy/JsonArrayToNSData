//
//  ViewController.m
//  sample
//
//  Created by Enterpi mini mac on 12/13/16.
//  Copyright © 2016 Enterpi mini mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *mapPoints = @[
                          @{ @"latitude":@"10.010490",
                              @"longitude":@"76.360779",
                              @"altitude":@"30.833334",
                              @"timestamp":@"11:17:23",
                              @"speed":@"0.00",
                              @"distance":@"0.00"
                          },
                          @{
                              @"latitude":@"10.010688",
                              @"longitude":@"76.361378",
                              @"altitude":@"28.546305",
                              @"timestamp":@"11:19:26",
                              @"speed":@"1.614",
                              @"distance":@"198.525711"
                          }
                          ];
    
    
    
    
    
    NSLog(@"Countries array = %@",mapPoints);
    NSData *mapPointsData = [NSKeyedArchiver archivedDataWithRootObject:mapPoints];
    NSLog(@"countries data=%@",mapPointsData);
    NSLog(@"mapPointsData to mapPointsArray = %@",[NSKeyedUnarchiver unarchiveObjectWithData:mapPointsData]);
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
