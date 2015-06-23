//
//  main.m
//  3-8-Shapes-Object
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

@interface Circle : NSObject
{
    @private
    ShapeColor fillColor;
    ShapeRect bounds;
}

-(void) setFillColor: (ShapeColor) fillColor;

-(void) setBounds: (ShapeRect) bounds;

-(void) draw;

@end

@implementation Circle

-(void) setFillColor:(ShapeColor) c
{
    fillColor = c;
}//setFillColor

-(void) setBounds:(ShapeRect) b
{
    bounds = b;
}//setBounds

-(void) draw
{
    NSLog(@"Drawing a circle at (%d, %d, %d, %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}//draw

@end

@interface Rectangle : NSObject
{
@private
    ShapeColor fillColor;
    ShapeRect bounds;
}

-(void) setFillColor: (ShapeColor) fillColor;

-(void) setBounds: (ShapeRect) bounds;

-(void) draw;

@end

@implementation Rectangle

-(void) setFillColor:(ShapeColor) c
{
    fillColor = c;
}//setFillColor

-(void) setBounds:(ShapeRect) b
{
    bounds = b;
}//setBounds

-(void) draw
{
    NSLog(@"Drawing a rectangle at (%d, %d, %d, %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}//draw

@end

@interface Egg : NSObject
{
@private
    ShapeColor fillColor;
    ShapeRect bounds;
}

-(void) setFillColor: (ShapeColor) fillColor;

-(void) setBounds: (ShapeRect) bounds;

-(void) draw;

@end

@implementation Egg

-(void) setFillColor:(ShapeColor) c
{
    fillColor = c;
}//setFillColor

-(void) setBounds:(ShapeRect) b
{
    bounds = b;
}//setBounds

-(void) draw
{
    NSLog(@"Drawing a egg at (%d, %d, %d, %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}//draw

@end

@interface Triangle : NSObject
{
@private
    ShapeColor fillColor;
    ShapeRect bounds;
}

-(void) setFillColor: (ShapeColor) fillColor;

-(void) setBounds: (ShapeRect) bounds;

-(void) draw;

@end

@implementation Triangle

-(void) setFillColor:(ShapeColor) c
{
    fillColor = c;
}//setFillColor

-(void) setBounds:(ShapeRect) b
{
    bounds = b;
}//setBounds

-(void) draw
{
    NSLog(@"Drawing a Triangle at (%d, %d, %d, %d) in %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}//draw

@end


int main(int argc, const char * argv[])
{
    id shapes[4];
    
    ShapeRect rect0 = {0, 0, 10, 30};
    shapes[0] = [Circle new];
    [shapes[0] setBounds: rect0];
    [shapes[0] setFillColor: kRedColor];
    [shapes[0] draw];
    
    ShapeRect rect1 = {30, 40, 50, 60};
    shapes[1] = [Rectangle new];
    [shapes[1] setBounds: rect1];
    [shapes[1] setFillColor: kGreenColor];
    [shapes[1] draw];
    
    ShapeRect rect2 = {15, 19, 37, 29};
    shapes[2] = [Egg new];
    [shapes[2] setBounds: rect2];
    [shapes[2] setFillColor: kBlueColor];
    [shapes[2] draw];
    
    ShapeRect rect3 = {45, 32, 80, 69};
    shapes[3] = [Triangle new];
    [shapes[3] setBounds: rect3];
    [shapes[3] setFillColor: kBlueColor];
    [shapes[3] draw];
    
    return 0;
}//main































