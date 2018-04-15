//
//  StyleController.m
//  Sports Players
//
//  Created by Angela Velilla Aguirre on 12/04/2018.
//  Copyright © 2018 Angela Velilla Aguirre. All rights reserved.
//

#import "StyleController.h"

@implementation StyleController

#pragma mark - Color Definitions

+ (UIColor *)mainBlueColor {
    return [UIColor colorWithRed:87.0/255.0 green:91.0/255.0 blue:137.0/255.0 alpha:1.0];
}

+ (UIColor *)mainCoralColor {
    return [UIColor colorWithRed:247.0/255.0 green:202.0/255.0 blue:187.0/255.0 alpha:1.0];
}

+ (UIColor *)lightBlueColor {
    return [UIColor colorWithRed:203.0/255.0 green:216.0/255.0 blue:211.0/255.0 alpha:1.0];
}

+ (UIColor *)darkCoralColor {
    return [UIColor colorWithRed:248.0/255.0 green:150.0/255.0 blue:116.0/255.0 alpha:1.0];
}

+ (UIColor *)blackColor {
    return [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:1.0];
}

#pragma mark - Fonts Definitions

+ (UIFont *)fontArialRegularWithSize:(float)size {
    return [UIFont fontWithName:@"ArialMT" size:size];
}

+ (UIFont *)fontArialBoldWithSize:(float)size {
    return [UIFont fontWithName:@"Arial-BoldMT" size:size];
}

@end
