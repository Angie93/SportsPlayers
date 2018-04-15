//
//  SportsPlayersTableViewController.h
//  Sports Players
//
//  Created by Angela Velilla Aguirre on 12/04/2018.
//  Copyright © 2018 Angela Velilla Aguirre. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SportsController.h"

@interface SportsPlayersTableViewController : UITableViewController <sportsControllerDelegate>

@property (strong, nonatomic) SportsController *sportsController;
@property (strong, nonatomic) NSArray *sportsArray;

@end
