//
//  ActivityDTO.h
//  TableViewTimeLine
//
//  Created by Adnan Ahmad on 18/03/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import <Foundation/Foundation.h>

@class VPBaseDTO;

@interface ActivityDTO : NSObject

@property(nonatomic,retain)VPBaseDTO * data;
@property(nonatomic,retain) NSString *lookupType;


+(id)activityWithDictionary:(NSDictionary *)dictionary;
-(id)setupWithDictionary:(NSDictionary *)dictionary;

@end
