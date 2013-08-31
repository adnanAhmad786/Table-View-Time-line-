//
//  QuestionDTO.m
//  TableViewTimeLine
//
//  Created by Adnan Ahmad on 29/01/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import "QuestionDTO.h"

@interface QuestionDTO ()

-(id)initWithDictionary:(NSDictionary *)dict andActivity:(ActivityDTO*)activity;
@end

@implementation QuestionDTO

@synthesize question=_question;
@synthesize isFalse=_isFalse;
@synthesize isTrue=_isTrue;
@synthesize type=_type;


+(id)initWithQuestion:(NSDictionary *)data andActivity:(ActivityDTO*)activity{


    return [[[QuestionDTO alloc] initWithDictionary:data andActivity:activity] autorelease];
}

-(id)initWithDictionary:(NSDictionary *)dict andActivity:(ActivityDTO*)activity{

    self=[super init];
    if (self) {
        
        [super setupWithDictionary:dict andActivity:activity];
        
        self.lookUpType =[dict objectForKey:@"type"];
        self.question=[dict objectForKey:@"ques"];
        self.isTrue=[[dict objectForKey:@"isTrue"] boolValue];
        self.isTrue=[[dict objectForKey:@"isFalse"] boolValue];
        
    }
    return self;
}

-(void)dealloc{

    [_question release];
    [super dealloc];
}
@end
