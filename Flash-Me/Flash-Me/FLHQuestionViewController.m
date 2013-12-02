//
//  FLHQuestionViewController.m
//  Flash-Me
//
//  Created by Keith Miller on 12/2/13.
//  Copyright (c) 2013 donald.keith. All rights reserved.
//

#import "FLHQuestionViewController.h"
#import "FLHFrontView.h"
#import "FLHSolutionView.h"
#import "FLHCheckmark.h"
#import "FLHCard.h"


@interface FLHQuestionViewController ()

@property (nonatomic, strong) FLHFrontView* frontView;

@property (nonatomic, strong) FLHSolutionView* solutionView;

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
  self.solutionView = [[FLHSolutionView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  self.solutionView.solution.text = self.curCard.solution;
  [self.solutionView.correctButton addTarget:self action:@selector(didSelectCorrectAnswer) forControlEvents:UIControlEventTouchUpInside];
  [self.solutionView.wrongButton addTarget:self action:@selector(didSelectWrongAnswer) forControlEvents:UIControlEventTouchUpInside];
  self.view = self.solutionView;
}


- (void)didSelectWrongAnswer
{
  [self nextCard];
}

- (void)didSelectCorrectAnswer
{
    [self.view addSubview:[[FLHCheckmark alloc] initWithFrame:self.view.bounds]];
    double delayInSeconds = 1.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        [self nextCard];
    });
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
