//
//  MESDetailViewController.h
//  Flash-Me
//
//  Created by Keith Miller on 12/1/13.
//  Copyright (c) 2013 donald.keith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MESDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
