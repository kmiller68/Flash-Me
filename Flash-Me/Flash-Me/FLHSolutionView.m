//
//  FLHSolutionView.m
//  Flash-Me
//
//  Created by Keith Miller on 12/2/13.
//  Copyright (c) 2013 donald.keith. All rights reserved.
//

#import "FLHSolutionView.h"

@implementation FLHSolutionView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
      
      [self setBackgroundColor:[UIColor whiteColor]];
      self.correctButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
      [self.correctButton setTitle:@"I Got it Correct!" forState:UIControlStateNormal];
      self.correctButton.titleLabel.font = [UIFont systemFontOfSize:20.0];
      [self.correctButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
      [self.correctButton sizeToFit];
      [self addSubview:self.correctButton];
      self.correctButton.center = (CGPoint) {
        .x = CGRectGetMaxX(frame) - CGRectGetWidth(self.correctButton.frame)/1.5,
        .y = CGRectGetMaxY(frame) - CGRectGetHeight(self.correctButton.frame)
      };
      
      
      [self setBackgroundColor:[UIColor whiteColor]];
      self.wrongButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
      [self.wrongButton setTitle:@"I Got it Wrong!" forState:UIControlStateNormal];
      self.wrongButton.titleLabel.font = [UIFont systemFontOfSize:20.0];
      [self.wrongButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
      [self.wrongButton sizeToFit];
      [self addSubview:self.wrongButton];
      self.wrongButton.center = (CGPoint) {
        .x = CGRectGetMinX(frame) + CGRectGetWidth(self.wrongButton.frame)/1.5,
        .y = CGRectGetMaxY(frame) - CGRectGetHeight(self.wrongButton.frame)
      };
      
      CGRect pFrame = (CGRect) {
        .origin = CGPointZero,
        .size = { .width = CGRectGetWidth(frame),
          .height = CGRectGetHeight(frame) - CGRectGetHeight(self.wrongButton.frame)
        }
      };
      
      self.solution = [[UILabel alloc] initWithFrame:pFrame];
      self.solution.font = [UIFont systemFontOfSize:30.0];
      self.solution.textAlignment = UITextAlignmentCenter;
      [self addSubview:self.solution];
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
