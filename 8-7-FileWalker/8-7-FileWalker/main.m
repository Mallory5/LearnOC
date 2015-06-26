//
//  main.m
//  8-7-FileWalker
//
//  Created by Keith on 15-6-26.
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
        home = [@"~" stringByExpandingTildeInPath];
        
        NSDirectoryEnumerator *direnum;
        direnum = [manager enumeratorAtPath: home];
        
        NSMutableArray *files;
        files = [NSMutableArray arrayWithCapacity: 42];
        
        NSString *fileName;
        while (fileName = [direnum nextObject]) {
            if ([[fileName pathExtension] isEqualTo: @"jpg"]) {
                [files addObject: fileName];
            }
        }
        NSEnumerator *fileenum;
        fileenum = [files objectEnumerator];
        
        while (fileName = [fileenum nextObject]) {
            NSLog(@"%@", fileName);
        }
        NSLog(@"end.........");
    }
    return 0;
}

