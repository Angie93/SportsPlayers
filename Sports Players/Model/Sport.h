//
//  Sport.h
//  Sports Players
//
//  Created by Angela Velilla Aguirre on 12/04/2018.
//  Copyright © 2018 Angela Velilla Aguirre. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sport : NSObject

@property (strong, nonatomic) NSString* sport;
@property (strong, nonatomic) NSArray* players;

- (id) initWithDictionary:(NSDictionary *)playerDictionary;

@end
