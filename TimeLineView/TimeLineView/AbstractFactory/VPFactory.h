//
//  VPFactory.h
//  TableViewTimeLine
//
//  Created by Adnan Ahmad on 18/03/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Model.h"

@interface VPFactory : NSObject

+(id)sharedInstance;

-(VPBaseDTO *)createDataOfType:(NSString *)assetType withDictionary:(NSDictionary *)dictionary activity:(ActivityDTO *)activity;

@end
