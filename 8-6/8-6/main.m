//
//  main.m
//  8-6
//
//  Created by Keith on 15-6-26.
//  Copyright (c) 2015年 Keith. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        //NSNumber
        
        //+ (NSNumber *) numberWithChar: (char) value;
        //+ (NSNumber *) numberWithInt: (int) value;
        //+ (NSNumber *) numberWithFloat: (float) value;
        //+ (NSNumber *) numberWithBool: (BOOL) value;
        //......
        
        //or
        NSNumber *number;
        number = @'X';                //char
        number = @1234;               //int
        number = @12345ul;            //usigned long
        number = @12345ll;            //long long
        number = @123.45f;            //float
        number = @123.45;             //double
        number = @YES;                //BOOL
        
        //example
        NSMutableArray *array = [NSMutableArray arrayWithCapacity: 10];
        NSMutableDictionary *dictionary = [NSMutableDictionary dictionaryWithCapacity: 10];
        NSNumber *numberInt = [NSNumber numberWithInt: 2333];
        
        NSNumber *numberChar = @'Y';
        
        [array addObject: numberInt];
        [dictionary setObject: numberChar forKey: @"Confirm"];
        
        NSLog(@"\n%@\n%@", array, dictionary);
        
        NSMutableArray *arrayN1 = [NSMutableArray arrayWithCapacity: 10];
        NSRect rect = NSMakeRect(1, 2, 30, 40);
        NSValue *value = [NSValue valueWithBytes: &rect objCType: @encode(NSRect)];
        [arrayN1 addObject: value];
        
        NSLog(@"%@", arrayN1);
    
    }
    return 0;
}

