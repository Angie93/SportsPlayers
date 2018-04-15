//
//  PlayerTableViewCell.m
//  Sports Players
//
//  Created by Angela Velilla Aguirre on 12/04/2018.
//  Copyright © 2018 Angela Velilla Aguirre. All rights reserved.
//

#import "PlayerTableViewCell.h"
#import "StyleController.h"
#import <AsyncImageDownloader.h>

@implementation PlayerTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    [self initCell];
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initCell];
    }
    return self;
}

#pragma mark - public methods

- (void)updateCellWithPlayer:(Player *)player {
    [self resetCell];
    self.playerName.text = [NSString stringWithFormat:@"%@ %@", player.name == nil ? @"" : player.name, player.surname == nil ? @"" : player.surname];
    self.playerBirthday.text = player.birthday;
    
    [[[AsyncImageDownloader alloc] initWithMediaURL:player.url successBlock:^(UIImage *image)  {
        [self.playerImage setImage:image];
    } failBlock:^(NSError *error) {
        NSLog(@"Failed to download image due to %@!", error);
        [self.playerImage setImage:[UIImage imageNamed:@"no-photo"]];
    }] startDownload];
    
}

#pragma mark - private methods

- (void)initCell {
    self.playerName.textColor = [StyleController mainBlueColor];
    self.playerName.font = [StyleController fontArialBoldWithSize:18.0];
    
    self.playerBirthday.textColor = [StyleController blackColor];
    self.playerBirthday.font = [StyleController fontArialRegularWithSize:16];
}

- (void)resetCell {
    self.playerImage.image = nil;
    self.playerName.text = @"";
    self.playerBirthday.text = @"";
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}


@end
