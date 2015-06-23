//
//  main.m
//  5-3-CarParts-2
//
//  Created by Keith on 15-4-24.
//  Copyright (c) 2015年 Keith. All rights reserved.
//

#import <Foundation/Foundation.h>

//---------------------------------------------------
@interface Tire : NSObject

@end//Tire

@implementation Tire

-(NSString *) description{
    return (@"I am a tire. I last a while.");
}
@end//Tire


//---------------------------------------------------
@interface Engine : NSObject

@end

@implementation Engine

-(NSString *) description{
    return(@"I am a Engine. Vrooom!");
}//description

@end//Engine

//---------------------------------------------------	
@interface V8 : Engine

@end

@implementation V8
	
-(NSString *) description
{
    return (@"I am a V8. VROOOM!");
}

@end


//---------------------------------------------------
@interface AllWeatherRadial : Tire

@end

@implementation AllWeatherRadial

-(NSString *) description
{
    return (@"I am a tire for rain or shine");
}

@end


//---------------------------------------------------
@interface Car : NSObject
{
    Engine *engine;
    Tire *tires[4];
}
-(Engine *) engine;

-(void) setEngine: (Engine *) newEngine;

-(Tire *) tireAtIndex: (int) index;

-(void) setTire: (Tire *) tire atIndex: (int) index;

-(void) print;

@end

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


//---------------------------------------------------
int main(int argc, const char * argv[])
{
    Car *car = [Car new];
    Engine *engine = [V8 new];
    [car setEngine:engine];
    
    for (int i = 0; i < 4; i++) {
        Tire *tire = [AllWeatherRadial new];
        [car setTire:tire atIndex:i];
    }
    [car print];
    return 0;
}//main


