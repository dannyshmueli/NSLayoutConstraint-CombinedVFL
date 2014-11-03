//
//  NSLayoutConstraint+BetterVFL.m
//  Read and Do
//
//  Created by Danny Shmueli on 9/27/13.
//  Copyright (c) 2013 Danny Shmueli. All rights reserved.
//

#import "NSLayoutConstraint+CombinedVFL.h"

@implementation NSLayoutConstraint (CombinedVFL)

+(NSArray *)constraintsWithCombinedVisualFormat:(NSString *)combinedFormat views:(NSDictionary *)views
{
	NSUInteger indexOfVerticalChar = [combinedFormat rangeOfString:@"V:"].location;
    NSString *verticalString;
    if (indexOfVerticalChar != NSNotFound)
    {
        verticalString= [combinedFormat substringFromIndex: indexOfVerticalChar];
    }
	NSString *horizontalString = [combinedFormat substringToIndex: indexOfVerticalChar - 1]; // trim the space

    if (verticalString)
    {
        return [[self constraintsForString:horizontalString views:views] arrayByAddingObjectsFromArray:[self constraintsForString:verticalString views:views]];
    }
	return [self constraintsForString:horizontalString views:views];
}

+(NSArray *)constraintsForString:(NSString *)string views:(NSDictionary *)views
{
	return [NSLayoutConstraint constraintsWithVisualFormat:string options:0 metrics:nil views:views];
}

@end
