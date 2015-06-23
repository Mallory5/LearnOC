//
//  main.m
//  4-2-Shapes-GreenCircle
//
//  Created by Keith on 15-4-24.
//  Copyright (c) 2015年 Keith. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    kCircle,
    kRectangle,
    kEgg
}ShapeType;

typedef enum {
    kRedColor,
    kGreenColor,
    kBlueColor
}ShapeColor;

typedef struct {
    int x, y, width, height;
}ShapeRect;

NSString *colorName (ShapeColor colorName)
{
    switch (colorName) {
        case kRedColor:
            return @"red";
            break;
            
        case kGreenColor:
            return @"green";
            break;
            
        case kBlueColor:
            return @"blue";
            break;
            
        default:
            return @"no clue";
            break;
    }
}//colorName

@interface Shape : NSObject{
    ShapeColor fillColor;
    ShapeRect bounds;
}

-(void) setFillColor:(ShapeColor)fillColor;
-(void) setBounds:(ShapeRect)bounds;
-(void) draw;

@end//Shape

@implementation Shape

-(void) setFillColor:(ShapeColor)c
{
    fillColor = c;
}//setFillColor

-(void) setBounds:(ShapeRect)b
{
    bounds = b;
}//setBounds

-(void) draw
{
}//draw

@end//Shape

@interface Circle : Shape

@end//Circle

@interface Rectangle : Shape

@end//Rectangle

@interface Triangle : Shape

@end//Triangle

@interface Egg : Shape

@end//Egg


@implementation Circle

/////////////////////////chong xie fang fa[super]///////////////////
-(void) setFillColor:(ShapeColor) c                               //
{                                                                 //
    if (c == kRedColor) {                                         //
        c = kGreenColor;                                          //
    }                                                             //
    [super setFillColor:c];                                       //
}                                                                 //
////////////////////////////////////////////////////////////////////

-(void) draw
{
    NSLog(@"Drawing a circle at (%d, %d, %d, %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}

@end//Circle

@implementation Rectangle

-(void) draw
{
    NSLog(@"Drawing a rectangle at (%d, %d, %d, %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}

@end//Rectangle

@implementation Triangle

-(void) draw
{
    NSLog(@"Drawing a triangle at (%d, %d, %d, %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}

@end//Triangle

@implementation Egg

-(void) draw
{
    NSLog(@"Drawing a Egg at (%d, %d, %d, %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}

@end//Egg

void drawShapes(id shapes[], int count)
{
    for (int i = 0; i < count; i++) {
        id shape = shapes[i];
        [shape draw];
 //       [shapes[i] draw];
    }
}//drawShapes

int main(int argc, const char * argv[])
{
    id shapes[4];
    
    ShapeRect rect0 = {0, 0, 10, 30};
    shapes[0] = [Circle new];
    [shapes[0] setBounds: rect0];
    [shapes[0] setFillColor: kRedColor];
//    [shapes[0] draw];
    
    ShapeRect rect1 = {30, 40, 50, 60};
    shapes[1] = [Rectangle new];
    [shapes[1] setBounds: rect1];
    [shapes[1] setFillColor: kGreenColor];
//    [shapes[1] draw];
    
    ShapeRect rect2 = {15, 19, 37, 29};
    shapes[2] = [Egg new];
    [shapes[2] setBounds: rect2];
    [shapes[2] setFillColor: kBlueColor];
//    [shapes[2] draw];
    
    ShapeRect rect3 = {45, 32, 80, 69};
    shapes[3] = [Triangle new];
    [shapes[3] setBounds: rect3];
    [shapes[3] setFillColor: kBlueColor];
//    [shapes[3] draw];
    
    drawShapes(shapes, 4);
    return 0;
}




































