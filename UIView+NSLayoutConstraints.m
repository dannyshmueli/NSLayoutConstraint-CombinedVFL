//
//  NSLayoutConstraints.m
//  AniChat
//
//  Created by Danny Shmueli on 12/27/14.
//  Copyright (c) 2014 Aniways. All rights reserved.
//

#import "UIView+NSLayoutConstraints.h"
#import "NSLayoutConstraint+CombinedVFL.h"

@implementation UIView (NSLayoutConstraints)

-(void)stickSubView:(UIView *)subview
{
    [self addConstraints:[NSLayoutConstraint constraintsWithCombinedVisualFormat:@"H:|[view]| V:|[view]|" views:@{@"view" : subview}]];
}

-(void)centerSubView:(UIView *)subview
{
    [self addConstraints:[NSLayoutConstraint constraintsForCenteringView:subview inContainerView:self]];
}
@end
