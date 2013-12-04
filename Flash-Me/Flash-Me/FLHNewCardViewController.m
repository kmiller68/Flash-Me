//
//  FLHNewCardViewController.m
//  Flash-Me
//
//  Created by Keith Miller on 12/3/13.
//  Copyright (c) 2013 donald.keith. All rights reserved.
//

#import "FLHNewCardViewController.h"

@interface FLHNewCardViewController ()

@property (nonatomic,strong) UITextField *prompt;
@property (nonatomic,strong) UITextField *solution;
@property (nonatomic,strong) UILabel *promptLabel;
@property (nonatomic,strong) UILabel *solutionLabel;

@end

@implementation FLHNewCardViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)init
{
  self = [super init];
  if (self) {
    
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  self.view.backgroundColor = [UIColor whiteColor];
  UIBarButtonItem *createButton = [[UIBarButtonItem alloc] initWithTitle:@"Create" style:UIBarButtonItemStylePlain target:self action:@selector(createCard)];
  self.navigationItem.rightBarButtonItem = createButton;
  
  CGRect frame = [[UIScreen mainScreen] bounds];


  
	// Do any additional setup after loading the view.
}


- (void)createCard
{
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
