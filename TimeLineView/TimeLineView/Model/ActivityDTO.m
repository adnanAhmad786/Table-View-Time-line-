//
//  ActivityDTO.m
//  TableViewTimeLine
//
//  Created by Adnan Ahmad on 18/03/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import "ActivityDTO.h"
#import "VPBaseDTO.h"
#import "VPFactory.h"

@implementation ActivityDTO

@synthesize data=_data;
@synthesize lookupType=_lookupType;


+(id)activityWithDictionary:(NSDictionary *)dictionary{

    return [[[ActivityDTO alloc] setupWithDictionary:dictionary] autorelease];

}
-(id)setupWithDictionary:(NSDictionary *)dictionary{

    self=[super init];
    
    if (self) {
        
        
        
        NSString *assetType = [dictionary objectForKey:@"type"];
        
        //User the fictory to create that specific kind of data  and asign it to this.
        
        self.data = [[VPFactory sharedInstance] createDataOfType:assetType withDictionary:dictionary activity:self];

    }

    return self;
}
@end

