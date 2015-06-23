//
//  main.m
//  2-2-BOOL_n
//
//  Created by Keith on 15-4-22.
//  Copyright (c) 2015年 Keith. All rights reserved.
//

#import <Foundation/Foundation.h>



int main(int argc, const char * argv[])
{
    int count = 100;
    NSLog(@"The numbers from 1 to %d:", count);
    
    for (int i = 1; i <= count; i++)
    {
        NSLog(@"%3d", i);
    }
    return 0;
}

