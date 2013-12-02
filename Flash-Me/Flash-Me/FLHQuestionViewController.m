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

@property (nonatomic, strong) FLHCard* curCard;

@property (nonatomic, strong) UIButton* butt;

@end

@implementation FLHQuestionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
      self.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
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

- (void)setCards:(FLHCardSet *)cards
{
  /*
  _cards = cards;
  [self nextCard];
  */
}


- (void)nextCard
{
  /*
  self.frontView = [[FLHFrontView alloc] initWithFrame:CGRectZero];
  self.butt = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  [self.butt setTitle:@"See Answer" forState:UIControlStateNormal];
  self.butt.titleLabel.font = [UIFont systemFontOfSize:20.0];
  [self.butt sizeToFit];
  [self.view addSubview:self.butt];
*/
  
}

- (void)viewDidLoad
{
  
  __block FLHCard *card = self.cardSet.cards[0];
  [card fetchInBackgroundWithBlock:^(PFObject *object, NSError *error) {
    card = (FLHCard *)object;
    NSLog(@"prompt:%s, solution:%s", card.prompt.cString, card.solution.cString);
    self.textLabel.text = self.cardSet.name;
  }];
  
  [super viewDidLoad];
  self.view.backgroundColor = [UIColor whiteColor];
  self.butt = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  [self.butt setTitle:@"See Answer" forState:UIControlStateNormal];
  self.butt.titleLabel.font = [UIFont systemFontOfSize:20.0];
  [self.butt sizeToFit];
  self.butt.center = CGPointMake(150, 150);
  [self.view addSubview:self.butt];
	// Do any additional setup after loading the view.
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
