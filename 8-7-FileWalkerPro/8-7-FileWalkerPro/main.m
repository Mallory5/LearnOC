//
//  main.m
//  8-7-FileWalkerPro
//
//  Created by Keith on 15-6-29.
//  Copyright (c) 2015年 Keith. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSFileManager *manager;
        manager = [NSFileManager defaultManager];
        
        NSString *home;
        home = [@"~/code" stringByExpandingTildeInPath];
        
        NSMutableArray *files;
        files = [NSMutableArray arrayWithCapacity: 42];
        
        for (NSString * filename in [manager enumeratorAtPath: home]) {
            if ([[filename pathExtension] isEqualTo: @"m"]) {
                [files addObject: filename];
            }
        }
        
        for (NSString *filename in files) {
            NSLog(@"%@", filename);
        }
        
    }
    return 0;
}

