//
//  Sport.m
//  Sports Players
//
//  Created by Angela Velilla Aguirre on 12/04/2018.
//  Copyright © 2018 Angela Velilla Aguirre. All rights reserved.
//

#import "Sport.h"
#import "Player.h"

@implementation Sport

#pragma mark - public methods

- (id) initWithDictionary:(NSDictionary *)playerDictionary {
    self = [super init];
    if (self) {
        self.sport = [playerDictionary objectForKey:@"title"];
        
        NSArray *playersArray = [playerDictionary objectForKey:@"players"];
        NSMutableArray *playersMutableArray = [[NSMutableArray alloc] init];
        
        for (NSDictionary *playerDict in playersArray) {
            Player *currentPlayer = [[Player alloc] initWithDictionary:playerDict];
            [playersMutableArray addObject:currentPlayer];
        }
        
        self.players = [playersMutableArray copy];
    }
    return self;
}

@end
