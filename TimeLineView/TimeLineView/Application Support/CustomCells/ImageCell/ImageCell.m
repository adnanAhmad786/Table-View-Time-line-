//
//  ImageCell.m
//  TableViewTimeLine
//
//  Created by Adnan Ahmad on 18/03/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import "ImageCell.h"
#import "CustomCellHelper.h"

@implementation ImageCell

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

+(ImageCell *)resuableCellForTableView:(UITableView *)tableview withOwner:(UIViewController *)owner{

    static NSString *identifer= @"ImageCell";
    
    ImageCell *cell = (ImageCell *)[CustomCellHelper tableView:tableview cellWithIdentifier:identifer owner:owner];
    
    return cell;
}
-(void)updateCellWithData:(ActivityDTO*)activity{

    ImageDTO *data =(ImageDTO *)activity.data;
    
    self.name.text=data.name;
    

}

- (void)dealloc {
    [_name release];
    [_image release];
    [super dealloc];
}
@end
