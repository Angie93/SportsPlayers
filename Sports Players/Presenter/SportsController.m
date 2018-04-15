//
//  SportsController.m
//  Sports Players
//
//  Created by Angela Velilla Aguirre on 12/04/2018.
//  Copyright © 2018 Angela Velilla Aguirre. All rights reserved.
//

#import "SportsController.h"
#import "Sport.h"

@implementation SportsController 

- (instancetype) init {
    self = [super init];
    
    if (self) {
    }
    
    return self;
}

#pragma mark - Public Methods

- (void)fetchSportsAndPlayers {
    NSString *urlString = @"https://api.myjson.com/bins/66851";
    NSURL *urlRequest = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:urlRequest];
    
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
}

#pragma mark NSURLConnection Delegate Methods

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    self.responseData = [[NSMutableData alloc] init];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [self.responseData appendData:data];
}

- (NSCachedURLResponse *)connection:(NSURLConnection *)connection
                  willCacheResponse:(NSCachedURLResponse*)cachedResponse {
    return nil;
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSString *responseString = [[NSString alloc] initWithData:self.responseData encoding:NSUTF8StringEncoding];
    
    NSData* data = [responseString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *e;
    NSArray *responseArray = [NSJSONSerialization JSONObjectWithData:data options:nil error:&e];

    
    if ( responseArray.count > 0 ) {
        
        NSMutableArray *sportsMutableArray = [[NSMutableArray alloc] init];
        
        for (NSDictionary *sportsDict in responseArray) {
            Sport *currentSport = [[Sport alloc] initWithDictionary:sportsDict];
            [sportsMutableArray addObject:currentSport];
        }
        
        NSArray *completeArray = [sportsMutableArray copy];
        
        [self.delegate didFinishStoreData:completeArray];
        
    } else {
        //ERROR
        [self.delegate showErrorFetchingData];
    }
    
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    NSLog(@"Error: %@", error.description);
    [self.delegate showErrorFetchingData];
}


@end
