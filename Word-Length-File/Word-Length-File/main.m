//
//  main.m
//  Word-Length-File
//
//  Created by Keith on 15-4-22.
//  Copyright (c) 2015年 Keith. All rights reserved.
//
/*
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    FILE *wordFile = fopen("/Users/keith/Documents/Learn_Objective-C/Word-Length-File/words.txt", "r");
    char word[100];
    
    while (fgets(word, 100, wordFile)) {
        word[strlen(word) - 1] = '\0';
        NSLog(@"%s is %lu characters long", word, strlen(word));
    }
    
    fclose(wordFile);
    
    return 0;
}//provided path in program.
*/

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    if(argc == 1){
        NSLog(@"You need to provide a file name");
        return 1;
    }
    
    FILE *wordFile = fopen(argv[1], "r");
    char word[200];
    
    if(wordFile == nil){
        NSLog(@"file is not exsist");
        return -1;
    }
    
    while (fgets(word, 200, wordFile)) {
        word[strlen(word) - 1] = '\0';
        NSLog(@"%s is %lu characters long", word, strlen(word));
    }
    
    fclose(wordFile);
    
    return 0;
}
