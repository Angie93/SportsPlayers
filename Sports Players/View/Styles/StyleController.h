//
//  StyleController.h
//  Sports Players
//
//  Created by Angela Velilla Aguirre on 12/04/2018.
//  Copyright © 2018 Angela Velilla Aguirre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface StyleController : NSObject

#pragma mark - Color Definitions

+ (UIColor *)mainBlueColor;
+ (UIColor *)mainCoralColor;
+ (UIColor *)lightBlueColor;
+ (UIColor *)darkCoralColor;
+ (UIColor *)blackColor;

#pragma mark - Fonts Definitions

+ (UIFont *)fontArialRegularWithSize:(float)size;
+ (UIFont *)fontArialBoldWithSize:(float)size;

@end
