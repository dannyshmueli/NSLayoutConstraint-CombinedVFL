//
//  NSLayoutConstraint+BetterVFL.h
//  Read and Do
//
//  Created by Danny Shmueli on 9/27/13.
//  Copyright (c) 2013 Danny Shmueli. All rights reserved.
//

@interface NSLayoutConstraint (CombinedVFL)

+(NSArray *)constraintsWithCombinedVisualFormat:(NSString *)combinedFormat views:(NSDictionary *)views;

@end
