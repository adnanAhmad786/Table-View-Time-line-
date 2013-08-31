 //
//  VPFactory.m
//  TableViewTimeLine
//
//  Created by Adnan Ahmad on 18/03/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import "VPFactory.h"

@implementation VPFactory


static VPFactory *_sharedInstance;

+(id)sharedInstance{

    if(_sharedInstance==nil){
        
        _sharedInstance= [[VPFactory alloc] init];
        
    }
    
    return _sharedInstance;

}

-(VPBaseDTO *)createDataOfType:(NSString *)assetType withDictionary:(NSDictionary *)dictionary activity:(ActivityDTO *)activity{

    VPBaseDTO *data=nil;
    
    if([assetType isEqualToString:kFeedTypeText]){
    
        data =[QuestionDTO initWithQuestion:dictionary andActivity:activity];
    
    }
    else if([assetType isEqualToString:KFeedTypeImage]){

        data =[ImageDTO initWithImageData:dictionary andActivity:activity];

    }
    else if([assetType isEqualToString:KFeedTypeNews]){
    
        data=[NewsDTO initWithNewsData:dictionary andActivity:activity];
    }

    return data;
}
@end
