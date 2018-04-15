//
//  Player.h
//  Sports Players
//
//  Created by Angela Velilla Aguirre on 12/04/2018.
//  Copyright © 2018 Angela Velilla Aguirre. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* surname;
@property (strong, nonatomic) NSString* birthday;
@property (strong, nonatomic) NSString* url;

- (id) initWithDictionary:(NSDictionary *)playerDictionary;

@end
