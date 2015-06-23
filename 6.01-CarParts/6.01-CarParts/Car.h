//
//  Car.h
//  6.01-CarParts
//
//  Created by Keith on 15-5-28.
//  Copyright (c) 2015年 Keith. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Tire;
@class Engine;

@interface Car : NSObject
{
    Engine *engine;
    Tire *tires[4];
}
-(Engine *) engine;

-(void) setEngine: (Engine *) newEngine;

-(Tire *) tireAtIndex: (int) index;

-(void) setTire: (Tire *) tire
        atIndex: (int) index;

-(void) print;

@end
