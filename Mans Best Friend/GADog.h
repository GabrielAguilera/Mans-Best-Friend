//
//  GADog.h
//  Mans Best Friend
//
//  Created by Gabriel Aguilera on 3/4/14.
//  Copyright (c) 2014 Gabriel Aguilera. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GADog : NSObject

@property (nonatomic) int age;
@property (nonatomic, strong) NSString *breed;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *name;

-(void)bark;
-(void)barkANumberOfTimes:(int)numberOfTimes;

@end
