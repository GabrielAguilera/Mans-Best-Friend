//
//  GADog.m
//  Mans Best Friend
//
//  Created by Gabriel Aguilera on 3/4/14.
//  Copyright (c) 2014 Gabriel Aguilera. All rights reserved.
//

#import "GADog.h"

@implementation GADog

-(void)bark
{
    NSLog(@"WOOF WOOF!");
}

-(void)barkANumberOfTimes:(int)numberOfTimes
{
    for(int i = 0; i < numberOfTimes; i++)
    {
        [self bark];
    }
}

-(void)changeBreedToWerewolf{
    self.breed = @"Werewolf";
}

-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud
{
    if(!isLoud){
        for(int i = 0; i < numberOfTimes; i++){
            NSLog(@"yip yip");
        }
    }
    else{
        for(int i = 0; i < numberOfTimes; i++){
            NSLog(@"BARK BARK");
        }
    }
}

@end
