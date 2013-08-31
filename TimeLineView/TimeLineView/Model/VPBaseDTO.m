//
//  VPBaseDTO.m
//  TableViewTimeLine
//
//  Created by Adnan Ahmad on 18/03/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import "VPBaseDTO.h"

@implementation VPBaseDTO

@synthesize lookUpType=_lookUpType;
@synthesize typeID=_typeID;
@synthesize activity=_activity;


-(void)setupWithDictionary:(NSDictionary *)dictionary andActivity:(ActivityDTO *)activity{

    self.typeID=[dictionary objectForKey:@"id"];
    
    self.activity=activity;

}
@end
