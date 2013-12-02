//
//  MESCardSet.m
//  Flash-Me
//
//  Created by Donald Huang on 12/1/13.
//  Copyright (c) 2013 donald.keith. All rights reserved.
//

#import "FLHCardSet.h"
#import <Parse/PFObject+Subclass.h>

@implementation FLHCardSet

@dynamic name;
@dynamic cards;

+ (NSString *)parseClassName
{
    return @"CardSet";
}

@end
