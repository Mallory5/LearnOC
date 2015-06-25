//
//  main.m
//  8.4
//
//  Created by Keith on 15-6-24.
//  Copyright (c) 2015年 Keith. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSString *height = @"hello 5";     //@"what the fuck code. I don't like it. holly shit!";
        
        NSUInteger lengthh = [height length];
        if (lengthh >= 20) {
            NSLog(@"I don't understand!");
        }else{
            NSLog(@"It's too navie ");
        }
        
        //--stringWithFormat:格式化创建字符串
        NSString *width = [NSString stringWithFormat: @"Hello %d", 5];
        //NSString *width = @"hello 6";
        
        //isEqualToString字符串比较函数，返回BOOL值
        if ([height isEqualToString: width]) {
            NSLog(@"They are the same");
        }else{
            NSLog(@"They are different");
        }
        
        //compare --字符串比较，返回枚举值
        //--NSOrderedAscending: left < right
        //--NSOrderedSame: left == right
        //--NSOrderedDescending: left > right
        switch([height compare: width]){
                case NSOrderedAscending:
                    NSLog(@"width is taller");
                    break;
                case NSOrderedSame:
                    NSLog(@"they are the same1");
                    break;
                case NSOrderedDescending:
                    NSLog(@"heigth is taller");
                    break;
                default:
                    exit(1);
        }
        
        //(NSComparisonResult) compare: (NSString *) aString option(掩位码): (NSStringCompareOptions) mask | mask...;
        //比较字符串，NSCaseInsensitiveSearch --不取分大小写
        //NSLiteralSearch --进行完全比较，区分大小写
        //NSNumericSearch --比较字符串个数，而非字符串值
        if ([height compare:width options:NSCaseInsensitiveSearch | NSNumericSearch] == NSOrderedSame) {
            NSLog(@"They match!");
        }
        
        //hasPrefix and hasSuffix --判断字符串开头和结尾字符.
        NSString *fileName = @"draft-chapter.pages";
        
        if ([fileName hasPrefix: @"draft"]) {
            NSLog(@"This is a draft file");
        }
        if ([fileName hasSuffix: @".pages"]) {
            NSLog(@"This is a .pages file");
        }
        //NSrange rangOfString NSrange struct --字符串是否包含目标字符串
        NSRange range = [fileName rangeOfString: @"chapter"];
        
        if (range.location == NSNotFound) {
            NSLog(@"There have no \"chapter\" in the file.");
        }
        else{
            NSLog(@"It's from %ld to %ld", range.location, range.location + range.length);
        }
    
        //indentify
        //NSMutableString: 创建可变字符串 （NSString的子类）
        //+ (id) stringWithCapacity: (NSUInteger) capacity;
        //- (void) appendString: (NSString *) aString;
        //- (void) appendFormat: (NSString *) format, ...;
        NSMutableString *newString = [NSMutableString stringWithCapacity: 50];
        [newString appendString: @"Hello there"];
        [newString appendFormat: @" human %d", 39];
        
        NSLog(@"%@", newString);
        
        //Indentify
        //- (void) deletCharactersInRange: (NSRange) aRange; --删除字符串
        NSMutableString *friends = [NSMutableString stringWithCapacity: 100];
        [friends appendString: @"Jone Aya Norland Lady Thunder"];
        
        NSLog(@"%@", friends);
        
        NSRange ladyRange = [friends rangeOfString: @"Lady"];
        ladyRange.length++;
        [friends deleteCharactersInRange: ladyRange];
        
        NSLog(@"%@ without Lady", friends);
        
    }
    return 0;
}

