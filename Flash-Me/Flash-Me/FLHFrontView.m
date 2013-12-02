//
//  FLHFrontView.m
//  Flash-Me
//
//  Created by Keith Miller on 12/2/13.
//  Copyright (c) 2013 donald.keith. All rights reserved.
//

#import "FLHFrontView.h"

@implementation FLHFrontView

- (id)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
    if (self) {
      [self setBackgroundColor:[UIColor whiteColor]];
      self.butt = [UIButton buttonWithType:UIButtonTypeRoundedRect];
      [self.butt setTitle:@"See Answer" forState:UIControlStateNormal];
      self.butt.titleLabel.font = [UIFont systemFontOfSize:20.0];
      [self.butt sizeToFit];
      [self addSubview:self.butt];
      self.butt.center = (CGPoint) {
        .x = CGRectGetMidX(frame),
        .y = CGRectGetMaxY(frame) - CGRectGetHeight(self.butt.frame)
      };
      
      CGRect pFrame = (CGRect) {
        .origin = CGPointZero,
        .size = { .width = CGRectGetWidth(frame),
                  .height = CGRectGetHeight(frame) - CGRectGetHeight(self.butt.frame)
        }
      };
      
      self.prompt = [[UILabel alloc] initWithFrame:pFrame];
      self.prompt.textAlignment = UITextAlignmentCenter;
      [self addSubview:self.prompt];
      
      
        // Initialization code
    }
    return self;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
