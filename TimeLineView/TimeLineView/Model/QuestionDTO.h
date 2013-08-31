//
//  QuestionDTO.h
//  TableViewTimeLine
//
//  Created by Adnan Ahmad on 29/01/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionDTO : VPBaseDTO

@property(nonatomic,retain)NSString *question;
@property(nonatomic,assign)BOOL isTrue;
@property(nonatomic,assign)BOOL isFalse;
@property(nonatomic,retain)NSString *type;

+(id)initWithQuestion:(NSDictionary *)data andActivity:(ActivityDTO*)activity;
@end
