//
//  NSLayoutConstraint+BetterVFL.m
//  Read and Do
//
//  Created by Danny Shmueli on 9/27/13.
//  Copyright (c) 2013 Danny Shmueli. All rights reserved.
//

#import "NSLayoutConstraint+CombinedVFL.h"

@implementation NSLayoutConstraint (CombinedVFL)

+(NSLayoutConstraint *)widthConstraintForView:(UIView *)view constant:(CGFloat)constant
{
    return [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:constant];
}

+(NSLayoutConstraint *)heightConstraintForView:(UIView *)view constant:(CGFloat)constant
{
    return [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:constant];
}

+(NSLayoutConstraint *)constraintForCenteringXView:(UIView *)view inContainerView:(UIView *)containerView constant:(CGFloat)constant
{
    return [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:containerView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:constant];
}

+(NSLayoutConstraint *)constraintForCenteringYView:(UIView *)view inContainerView:(UIView *)containerView constant:(CGFloat)constant
{
    return [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:containerView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:constant];
}


+(NSArray *)constraintsForCenteringView:(UIView *)view inContainerView:(UIView *)containerView
{
    NSLayoutConstraint *centerX = [self constraintForCenteringXView:view inContainerView:containerView constant:0];
    
    NSLayoutConstraint *centerY = [self constraintForCenteringYView:view inContainerView:containerView constant:0];
    return @[centerX, centerY];
}

+(NSArray *)constraintsWithCombinedVisualFormat:(NSString *)combinedFormat views:(NSDictionary *)views
{
	NSUInteger indexOfVerticalChar = [combinedFormat rangeOfString:@"V:"].location;
    NSString *verticalString, *horizontalString;
    if (indexOfVerticalChar != NSNotFound)
    {
        verticalString= [combinedFormat substringFromIndex: indexOfVerticalChar];
        horizontalString = [combinedFormat substringToIndex: indexOfVerticalChar - 1]; // trim the space
    }
	else
    {
        horizontalString = combinedFormat;
    }

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
