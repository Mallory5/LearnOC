//
//  main.m
//  8-5
//
//  Created by Keith on 15-6-25.
//  Copyright (c) 2015年 Keith. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Tire.h"


int main(int argc, const char * argv[])
{
    //NSArray
    @autoreleasepool {
        
        // insert code here...
        
        NSArray *array1 = [NSArray arrayWithObjects: @"one", @"two", @"three", nil];
        NSArray *array2 = @[@"one", @"two", @"three"];
        
        //- (NSUInteger)count
        //- (id)objectAtIndex:(NSUInteger)index;
//--        id *myObject = array1[1];
        
        for (NSInteger i = 0; i < [array2 count]; i++) {
            NSLog(@"index %ld has %@", i, [array2 objectAtIndex:i]);
        }
        
        for (NSInteger i = 0; i < [array1 count]; i++) {
            NSLog(@"index %ld has %@", i, array1[i]);
        }
        
        //-componentsSeparatedByString:
        //-componentsJoinedByString:
        NSString *string = @"opp:action:book:point:shit";
        NSArray *chunks = [string componentsSeparatedByString: @":"];
        
        string = [chunks componentsJoinedByString: @":-)"];
        
        for (NSUInteger i = 0; i < [chunks count]; i++) {
            NSLog(@"%@", [chunks objectAtIndex: i]);
        }
        
        NSLog(@"%@", string);
        
        //NSMutableArray
        
        //+ (id) arrayWithCapacity
        NSMutableArray *array3 = [NSMutableArray arrayWithCapacity: 17];
        
        [array3 addObjectsFromArray: array1];
        
        [array3 addObject: @"four"];

        NSLog(@"array3: %@", array3);
        
        int x = 2;
        
        [array3 removeObjectAtIndex: x];
        
        NSLog(@"array3 without index %d: %@", x, array3);
        
        
        //-(NSEnumerator *)objectEnumerator;
        //- (id) nextObject;
        id thingie;
        NSEnumerator *enumerator = [array3 objectEnumerator];
        while (thingie = [enumerator nextObject]) {
            NSLog(@"I found %@", thingie);
        }
        //快速枚举和代码块
        for (NSString *string in array3)
        {
            NSLog(@"I found %@ too", string);
        }
        //[array enumerateObjectsUsingBlock:(void (^)(id obj, NSUInteger idx, BOOL *stop))block]
        [array3 enumerateObjectsUsingBlock: ^(NSString *string, NSUInteger index, BOOL *stop){
            NSLog(@"I also Found %@", string);
        }];
        
        
        //NSDictionary --与NSString、NSArray一样不可变，可用 NSMutableDictionary 定义可变字典
        //@{key: value, ...} && + (id) dictionaryWithObjectsAndKeys: (id) firstObject, ... ;
        
        Tire *t1 = [Tire new];
        Tire *t2 = [Tire new];
        Tire *t3 = [Tire new];
        Tire *t4 = [Tire new];
        
        //creat a dictionary
        NSDictionary *tires = [NSDictionary dictionaryWithObjectsAndKeys: t1, @"front_left", t2, @"front_right", t3, @"back_left", t4, @"back_right", nil];
        
        //or like this
        NSDictionary *tires_ = @{@"front_left" : t1, @"front_right" : t2, @"back_left" : t3, @"back_right" : t4};
        
        //check the dictionary
        Tire *tire = [tires objectForKey: @"front_right"];
        
        //or like this
        Tire *tire_ = tires_[@"front_wrong"];
        
        NSLog(@"tire: %@  tire_: %@", tire, tire_);
        
        //NSMutableDictionary
        NSMutableDictionary *tiresMutable = [NSMutableDictionary dictionary];
        [tiresMutable setObject: t1 forKey: @"front_left"];
        [tiresMutable setObject: t2 forKey: @"front_right"];
        [tiresMutable setObject: t3 forKey: @"back_left"];
        [tiresMutable setObject: t4 forKey: @"back_right"];
        
        //or licke this
        NSMutableDictionary *tiresMutable_ = [NSMutableDictionary dictionaryWithCapacity: 10];
        [tiresMutable_ setObject: t1 forKey: @"front_left"];
        [tiresMutable_ setObject: t2 forKey: @"front_right"];
        [tiresMutable_ setObject: t3 forKey: @"back_left"];
        [tiresMutable_ setObject: t4 forKey: @"back_right"];
        
        //remove an object --  - (void) removeObjectForKey: (id) akey;
        [tiresMutable removeObjectForKey: @"back_left"];
        
        Tire *tireMutable = [tiresMutable objectForKey: @"back_left"];
        NSLog(@"%@", tireMutable);
        
    }
    return 0;
}

