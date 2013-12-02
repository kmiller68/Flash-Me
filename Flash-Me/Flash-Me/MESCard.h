//
//  MESCard.h
//  Flash-Me
//
//  Created by Donald Huang on 12/1/13.
//  Copyright (c) 2013 donald.keith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface MESCard : PFObject <PFSubclassing>

+ (NSString *)parseClassName;

@property (strong, nonatomic) NSString *prompt;
@property (strong, nonatomic) NSString *solution;

@end
