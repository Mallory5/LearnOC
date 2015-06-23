//
//  main.m
//  Word-Length-1
//
//  Created by Keith on 15-4-22.
//  Copyright (c) 2015年 Keith. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    const char *word[4] = {"aarddf", "dfafae", "cvafegvbb", "dfaet"};
    int wordCount = 4;
    
    for (int i = 0; i < wordCount; i++) {
        NSLog(@"%s is %lu characters long", word[i], strlen(word[i]));
    }
    return 0;
}

