//
//  ImageDTO.h
//  TableViewTimeLine
//
//  Created by Adnan Ahmad on 18/03/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ImageDTO : VPBaseDTO

@property (nonatomic,retain)NSString *name;
@property (nonatomic,retain) NSString *thumbuRL;
@property (nonatomic,retain) NSString *type;

+(id)initWithImageData:(NSDictionary *)data andActivity:(ActivityDTO *)activity;

@end
