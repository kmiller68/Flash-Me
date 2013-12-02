//
//  FLHCheckmark.m
//  Flash-Me
//
//  Created by Donald Huang on 12/2/13.
//  Copyright (c) 2013 donald.keith. All rights reserved.
//

#import "FLHCheckmark.h"

@implementation FLHCheckmark

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    float cp1x = 50.0f;
    float cp1y = 250.0f;
    float cp2x = 100.0f;
    float cp2y = 330.0f;
    float cp3x = 270.0f;
    float cp3y = 150.0f;

    CGContextSetRGBStrokeColor(ctx,1,0,0,1);
    CGContextSetLineWidth(ctx, 5);
    CGContextSetStrokeColorWithColor(ctx, [UIColor greenColor].CGColor);
    CGMutablePathRef cp1 = CGPathCreateMutable();
    CGPathMoveToPoint(cp1, NULL, cp1x, cp1y);
    CGPathAddLineToPoint(cp1, NULL, cp2x, cp2y);
    CGPathAddLineToPoint(cp1, NULL, cp3x, cp3y);
    CGContextAddPath(ctx, cp1);
    CGContextStrokePath(ctx);
}

@end
