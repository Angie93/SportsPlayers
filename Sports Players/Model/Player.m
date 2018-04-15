//
//  Player.m
//  Sports Players
//
//  Created by Angela Velilla Aguirre on 12/04/2018.
//  Copyright © 2018 Angela Velilla Aguirre. All rights reserved.
//

#import "Player.h"

@implementation Player

#pragma mark - public methods

- (id) initWithDictionary:(NSDictionary *)playerDictionary {
    self = [super init];
    if (self) {
        self.name = [playerDictionary objectForKey:@"name"] == nil ? @"" : [playerDictionary objectForKey:@"name"];
        self.surname = [playerDictionary objectForKey:@"surname"] == nil ? @"" : [playerDictionary objectForKey:@"surname"];
        self.birthday = [playerDictionary objectForKey:@"date"] == nil ? @"" : [playerDictionary objectForKey:@"date"];
        self.url = [playerDictionary objectForKey:@"image"];
        self.url = [self.url stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
        self.url = [self.url stringByReplacingOccurrencesOfString:@"http://" withString:@"https://"];
    }
    return self;
}

                                                                            
@end
