//
//  Car.m
//  6.01-CarParts
//
//  Created by Keith on 15-5-28.
//  Copyright (c) 2015年 Keith. All rights reserved.
//

#import "Car.h"
#import "Tire.h"
#import "Engine.h"

@implementation Car

-(Engine *) engine
{
    return engine;
}

-(void) setEngine:(Engine *)newEngine
{
    engine = newEngine;
}

-(void) setTire:(Tire *)tire atIndex:(int)index
{
    if (index < 0 || index > 3) {
        NSLog(@"bad index (%d) in setTire:atIndex:", index);
        exit(1);
    }
    tires[index] = tire;
}//setTier:atIndex:

-(Tire *) tireAtIndex:(int)index
{
    if (index < 0 || index > 3) {
        NSLog(@"bad index (%d) in tireAtIndex:",index);
        exit(1);
    }
    return (tires[index]);
}//tireAtIndex:


-(void) print
{
    NSLog(@"%@", engine);
    NSLog(@"%@", tires[0]);
    NSLog(@"%@", tires[1]);
    NSLog(@"%@", tires[2]);
    NSLog(@"%@", tires[3]);
}

@end
