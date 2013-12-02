//
//  MESCardSet.h
//  Flash-Me
//
//  Created by Donald Huang on 12/1/13.
//  Copyright (c) 2013 donald.keith. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>

@interface MESCardSet : PFObject <PFSubclassing>

@property (strong, nonatomic) NSString *setName;
//@property (strong, nonatomic) NSString *setName;
+ (NSString *)parseClassName;

@end
