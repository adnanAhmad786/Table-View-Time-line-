//
//  NewsDTO.h
//  TableViewTimeLine
//
//  Created by Adnan Ahmad on 22/03/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewsDTO : VPBaseDTO

@property (nonatomic,retain)NSString *name;
@property (nonatomic,retain) NSString *message;
@property (nonatomic,retain) NSString *time;
@property (nonatomic,retain) NSString *status;


+(id)initWithNewsData:(NSDictionary *)data andActivity:(ActivityDTO *)activity;


@end
