//
//  main.m
//  3-8-Shapes-procedural
//
//  Created by Keith on 15-4-23.
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

typedef struct {
    ShapeType type;
    ShapeColor fillcolor;
    ShapeRect bounds;
}Shape;


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

void drawCircle(ShapeRect bounds, ShapeColor fillcolor)
{
    NSLog(@"Drawing a circle at (%d, %d, %d, %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillcolor));
}//drawCircle

void drawRectangle(ShapeRect bounds, ShapeColor fillcolor)
{
    NSLog(@"Drawing a rectangle at (%d, %d, %d, %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillcolor));
}//drawCircle

void drawEgg(ShapeRect bounds, ShapeColor fillcolor)
{
    NSLog(@"Drawing a egg at (%d, %d, %d, %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillcolor));
}//drawCircle

void drawShapes(Shape shapes[], int count)
{
    for (int i = 0; i < count; i++){
        switch (shapes[i].type) {
            case kCircle:
                drawCircle (shapes[i].bounds, shapes[i].fillcolor);
                break;
                
            case kRectangle:
                drawRectangle (shapes[i].bounds, shapes[i].fillcolor);
                break;
                
            case kEgg:
                drawEgg (shapes[i].bounds, shapes[i].fillcolor);
                break;
            default:
                break;
        }
    }
}//drawShapes


int main(int argc, const char * argv[])
{
    Shape shapes[3];
    
    ShapeRect ret0 = {0, 0, 10, 30};
    shapes[0].type = kCircle;
    shapes[0].fillcolor = kRedColor;
    shapes[0].bounds = ret0;
    
    ShapeRect ret1 = {30, 40, 50, 60};
    shapes[1].type = kRectangle;
    shapes[1].fillcolor = kGreenColor;
    shapes[1].bounds = ret1;
    
    ShapeRect ret2 = {15, 18, 37, 29};
    shapes[2].type = kEgg;
    shapes[2].fillcolor = kBlueColor;
    shapes[2].bounds =ret2;
    
    drawShapes(shapes, 3);
    
    return 0;
}//main



