//
//  main.m
//  6.01-CarParts
//
//  Created by Keith on 15-5-28.
//  Copyright (c) 2015年 Keith. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Engine.h"
#import "Tire.h"
#import "V8.h"
#import "Car.h"
#import "AllweatherTire.h"

//---------------------------------------------------
int main(int argc, const char * argv[])
{
    Car *car = [Car new];
    Engine *engine = [V8 new];
    [car setEngine:engine];
    
    for (int i = 0; i < 4; i++) {
        Tire *tire = [AllweatherTire new];
        [car setTire:tire atIndex:i];
    }
    [car print];
    return 0;
}//main
