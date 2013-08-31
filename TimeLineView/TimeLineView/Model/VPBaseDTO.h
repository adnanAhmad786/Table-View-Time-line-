//
//  VPBaseDTO.h
//  TableViewTimeLine
//
//  Created by Adnan Ahmad on 18/03/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ActivityDTO.h"

@interface VPBaseDTO : NSObject


@property(nonatomic,retain)NSString *lookUpType;
@property(nonatomic,retain)ActivityDTO *activity;
@property(nonatomic,retain)NSString *typeID;
-(void)setupWithDictionary:(NSDictionary *)dictionary andActivity:(ActivityDTO *)activity;

@end
