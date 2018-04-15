//
//  SportsController.h
//  Sports Players
//
//  Created by Angela Velilla Aguirre on 12/04/2018.
//  Copyright © 2018 Angela Velilla Aguirre. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol sportsControllerDelegate <NSObject>

- (void)didFinishStoreData:(NSArray *)sportsArray;
- (void)showErrorFetchingData;

@end

@interface SportsController : NSObject <NSURLConnectionDelegate>

@property (nonatomic, weak) id <sportsControllerDelegate> delegate;
@property (strong, nonatomic) NSMutableData *responseData;

- (void)fetchSportsAndPlayers;

@end
