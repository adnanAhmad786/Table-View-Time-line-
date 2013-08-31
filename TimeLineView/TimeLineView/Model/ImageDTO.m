//
//  ImageDTO.m
//  TableViewTimeLine
//
//  Created by Adnan Ahmad on 18/03/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import "ImageDTO.h"

@interface ImageDTO()

-(id)initWithData:(NSDictionary *)dict andActivity:(ActivityDTO *)activity;
@end
@implementation ImageDTO
@synthesize name=_name;
@synthesize thumbuRL=_thumbuRL;
@synthesize type=_type;

+(id)initWithImageData:(NSDictionary *)data andActivity:(ActivityDTO *)activity{

    return [[[ImageDTO alloc] initWithData:data andActivity:activity] autorelease];

}

-(id)initWithData:(NSDictionary *)dict andActivity:(ActivityDTO *)activity{

    self=[super init];
    if (self) {
        
        [super setupWithDictionary:dict andActivity:activity];
        
        self.lookUpType =[dict objectForKey:@"type"];
        self.name=[dict objectForKey:@"name"];
        self.thumbuRL=[dict objectForKey:@"thumbURL"];
    }

    return self;
}
@end
