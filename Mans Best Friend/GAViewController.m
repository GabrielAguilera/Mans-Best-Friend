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
    myDog.image = [UIImage imageNamed:@"St.Bernard.JPG"];
    
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    
    
    GADog *secondDog = [[GADog alloc] init];
    secondDog.name = @"Wishbone";
    secondDog.breed = @"Jack Russell Terrier";
    secondDog.image = [UIImage imageNamed:@"JRT.jpg"];
    
    GADog *thirdDog = [[GADog alloc] init];
    thirdDog.name = @"Lassie";
    thirdDog.breed = @"Collie";
    thirdDog.image = [UIImage imageNamed:@"BorderCollie.jpg"];
    
    GADog *fourthDog = [[GADog alloc] init];
    fourthDog.name = @"Angel";
    fourthDog.breed = @"Greyhound";
    fourthDog.image = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    
    //Allocate space for the member
    self.myDogs = [[NSMutableArray alloc] init];
    
    //Use an instance method to add the objects.
    //Note addObject appends it to the end.
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    //NSLog(@"%@", self.myDogs);
    
    
    //[object method]
    //[myDog barkANumberOfTimes:2];
    
    //how to call methods with multiple arguements.
    //[myDog barkANumberOfTimes:5 loudly:NO];
    
    //Note the syntax for printing is %@ when dealing with objects.
    //NSLog(@"%@", myDog.breed);
    
    
    //[self printHelloWorld];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)printHelloWorld
{
    NSLog(@"Hello World!");
}

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender
{
    //Get the number of dogs in the array using the instance method
    int numberOfDogs = [self.myDogs count];
    
    //arc4random is a pseudorandom generator
    int randomIndex = arc4random() % numberOfDogs;
    
    GADog *randomDog = [self.myDogs objectAtIndex:randomIndex];

    [UIView transitionWithView:self.view duration:2.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image = randomDog.image;
        self.breedLabel.text = randomDog.breed;
        self.nameLabel.text = randomDog.name;
    } completion:^(BOOL finished) {
        
    }];
//    self.myImageView.image = randomDog.image;
//    self.breedLabel.text = randomDog.breed;
//    self.nameLabel.text = randomDog.name;
    
    //Update the button that was pressed.
    sender.title = @"And Another";
}

@end
