//
//  NSLayoutConstraint+BetterVFL.h
//  Read and Do
//
//  Created by Danny Shmueli on 9/27/13.
//  Copyright (c) 2013 Danny Shmueli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSLayoutConstraint (CombinedVFL)

/**

 @param<combinedFormat> example: @"H:|[view1]| V:|[view1][view2]|"
 @return an array of constraints for both horizontal and vertical VFLs.
 */


+(NSLayoutConstraint *)widthConstraintForView:(UIView *)view constant:(CGFloat)constant;
+(NSLayoutConstraint *)heightConstraintForView:(UIView *)view constant:(CGFloat)constant;

+(NSLayoutConstraint *)constraintForCenteringXView:(UIView *)view inContainerView:(UIView *)containerView constant:(CGFloat)constant;
+(NSLayoutConstraint *)constraintForCenteringYView:(UIView *)view inContainerView:(UIView *)containerView constant:(CGFloat)constant;

+(NSArray *)constraintsWithCombinedVisualFormat:(NSString *)combinedFormat views:(NSDictionary *)views;
+(NSArray *)constraintsWithCombinedVisualFormat:(NSString *)combinedFormat views:(NSDictionary *)views respectLang:(BOOL)respectLang;

+(NSArray *)constraintsForCenteringView:(UIView *)view inContainerView:(UIView *)containerView;

@end
