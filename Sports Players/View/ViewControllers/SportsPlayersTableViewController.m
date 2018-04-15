//
//  SportsPlayersTableViewController.m
//  Sports Players
//
//  Created by Angela Velilla Aguirre on 12/04/2018.
//  Copyright © 2018 Angela Velilla Aguirre. All rights reserved.
//

#import "SportsPlayersTableViewController.h"
#import "SportsController.h"
#import "Sport.h"
#import "PlayerTableViewCell.h"
#import "TableHeaderView.h"
#import "StyleController.h"

@interface SportsPlayersTableViewController ()

@end

@implementation SportsPlayersTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initView];
}

#pragma mark - Private Methods 

- (void)initView {
    self.clearsSelectionOnViewWillAppear = NO;
    
    self.sportsController = [[SportsController alloc] init];
    self.sportsController.delegate = self;
    [self.sportsController fetchSportsAndPlayers];
}

#pragma mark - Sports Controller Delegate
    
- (void)didFinishStoreData:(NSArray *)sportsArray {
    self.sportsArray = [[NSArray alloc] initWithArray:sportsArray];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.tableView.rowHeight = 121;
    
    [self.tableView reloadData];
}

- (void)showErrorFetchingData {
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.sportsArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    Sport *sport = self.sportsArray[section];
    return sport.players.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 50;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *viewHeader = [UIView.alloc initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 50)];
    UILabel *lblTitle = [UILabel.alloc initWithFrame:CGRectMake(25, 15, viewHeader.frame.size.width-50, viewHeader.frame.size.height-30)];
    [lblTitle setFont:[StyleController fontArialBoldWithSize:18]];
    [lblTitle setTextColor:[StyleController mainBlueColor]];
    [lblTitle setTextAlignment:NSTextAlignmentCenter];
    [lblTitle setBackgroundColor:[UIColor clearColor]];
    Sport *currentSport = [self.sportsArray objectAtIndex:section];
    lblTitle.text = currentSport.sport;
    [viewHeader setBackgroundColor:[StyleController mainCoralColor]];
    [viewHeader addSubview:lblTitle];
    return viewHeader;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PlayerTableViewCell *cell = (PlayerTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"playerCell" forIndexPath:indexPath];
    Sport *currentSport = [self.sportsArray objectAtIndex:indexPath.section];
    Player *currentPlayer = [currentSport.players objectAtIndex:indexPath.row];
    [cell updateCellWithPlayer:currentPlayer];
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
