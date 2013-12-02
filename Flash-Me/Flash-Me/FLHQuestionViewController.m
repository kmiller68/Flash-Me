//
//  FLHQuestionViewController.m
//  Flash-Me
//
//  Created by Keith Miller on 12/2/13.
//  Copyright (c) 2013 donald.keith. All rights reserved.
//

#import "FLHQuestionViewController.h"
#import "FLHFrontView.h"
#import "FLHCard.h"

@interface FLHQuestionViewController ()

@property (nonatomic, strong) FLHFrontView* frontView;

@property (nonatomic, strong) FLHCard *curCard;


@end

@implementation FLHQuestionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
      self.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
      [self.view setBackgroundColor:[UIColor whiteColor]];
      // Custom initialization
    }
    return self;
}

- (id)init
{
  self = [super init];
  if (self) {
    self.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
  }
  return self;
}


- (void)nextCard
{
  
  
  
  self.frontView = [[FLHFrontView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  self.curCard = [self.cardSet.cards objectAtIndex:arc4random_uniform(self.cardSet.cards.count)];
  self.frontView.prompt.text = self.curCard.prompt;
  [self.frontView.butt addTarget:self action:@selector(showAnswer) forControlEvents:UIControlEventTouchUpInside];
  self.view = self.frontView;

  
}

- (void)showAnswer
{
  NSLog(@"woo");
}


- (void)viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
  [FLHCard fetchAllInBackground:self.cardSet.cards block:^(NSArray *objects, NSError *error) {
    if (error) {
      NSLog(@"cardSet fetch failed");
    }
    [self nextCard];
  }];
  

	// Do any additional setup after loading the view.
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
