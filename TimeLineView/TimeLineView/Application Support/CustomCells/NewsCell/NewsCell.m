//
//  NewsCell.m
//  TableViewTimeLine
//
//  Created by Adnan Ahmad on 22/03/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import "NewsCell.h"
#import "CustomCellHelper.h"
#import "NewsDTO.h"

@implementation NewsCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
+(NewsCell *)resuableCellForTableView:(UITableView *)tableview withOwner:(UIViewController *)owner{
    static NSString *identifer= @"NewsCell";
    
    NewsCell *cell = (NewsCell *)[CustomCellHelper tableView:tableview cellWithIdentifier:identifer owner:owner];
    
    return cell;

}
-(void)updateCellWithData:(ActivityDTO*)activity{

    
    NewsDTO *news =(NewsDTO *)activity.data;
    
    self.name.text=news.name;
    self.message.text=news.message;
    self.status.text=news.status;
    self.time.text=news.time;
    
}
- (void)dealloc {
    [_userImage release];
    [_name release];
    [_message release];
    [_status release];
    [_time release];
    [super dealloc];
}
@end
