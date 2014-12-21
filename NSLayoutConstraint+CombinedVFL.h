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


+(NSArray *)constraintsWithCombinedVisualFormat:(NSString *)combinedFormat views:(NSDictionary *)views;

+(NSArray *)constraintsForCenteringView:(UIView *)view inContainerView:(UIView *)containerView;

@end
