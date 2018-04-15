//
//  PlayerTableViewCell.h
//  Sports Players
//
//  Created by Angela Velilla Aguirre on 12/04/2018.
//  Copyright © 2018 Angela Velilla Aguirre. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"

@interface PlayerTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *playerImage;
@property (weak, nonatomic) IBOutlet UILabel *playerName;
@property (weak, nonatomic) IBOutlet UILabel *playerBirthday;

- (void)updateCellWithPlayer:(Player *)player;

@end
