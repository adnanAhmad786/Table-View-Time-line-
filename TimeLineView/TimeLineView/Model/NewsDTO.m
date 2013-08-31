//
//  NewsDTO.m
//  TableViewTimeLine
//
//  Created by Adnan Ahmad on 22/03/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import "NewsDTO.h"

@interface NewsDTO()

-(id)initWithData:(NSDictionary *)dict andActivity:(ActivityDTO *)activity;
@end

@implementation NewsDTO

@synthesize name=_name;
@synthesize message=_message;
@synthesize status=_status;
@synthesize time=_time;

+(id)initWithNewsData:(NSDictionary *)data andActivity:(ActivityDTO *)activity{

    return [[[NewsDTO alloc] initWithData:data andActivity:activity] autorelease];
}


-(id)initWithData:(NSDictionary *)dict andActivity:(ActivityDTO *)activity{

    self=[super init];
    if (self) {
        
        [super setupWithDictionary:dict andActivity:activity];
    
        self.lookUpType =[dict objectForKey:@"type"];
        self.name =[dict objectForKey:@"name"];
        self.status =[dict objectForKey:@"status"];
        self.time =[dict objectForKey:@"time"];
    }
    
    return self;
}

@end
