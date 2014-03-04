//
//  GAViewController.m
//  Mans Best Friend
//
//  Created by Gabriel Aguilera on 3/4/14.
//  Copyright (c) 2014 Gabriel Aguilera. All rights reserved.
//

#import "GAViewController.h"
#import "GADog.h"

@interface GAViewController ()

@end

@implementation GAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    GADog *myDog = [[GADog alloc] init];
    myDog.name = @"Nana";
    myDog.breed = @"St. Bernard";
    myDog.age = 1;
    //[object method]
    //[myDog bark];
    [myDog barkANumberOfTimes:2];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
