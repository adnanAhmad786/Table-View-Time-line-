//
//  NewsCell.h
//  TableViewTimeLine
//
//  Created by Adnan Ahmad on 22/03/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsCell : UITableViewCell
@property (retain, nonatomic) IBOutlet UIImageView *userImage;
@property (retain, nonatomic) IBOutlet UILabel *name;
@property (retain, nonatomic) IBOutlet UILabel *message;
@property (retain, nonatomic) IBOutlet UILabel *status;
@property (retain, nonatomic) IBOutlet UILabel *time;


+(NewsCell *)resuableCellForTableView:(UITableView *)tableview withOwner:(UIViewController *)owner;
-(void)updateCellWithData:(ActivityDTO*)activity;

@end
