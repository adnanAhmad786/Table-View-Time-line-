//
//  QuizVC.m
//  TimeLineView
//
//  Created by Adnan Ahmad on 27/08/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import "QuizVC.h"
#import "TrueFalseCell.h"
#import "QuestionDTO.h"
#import "ImageDTO.h"
#import "ImageCell.h"
#import "ActivityDTO.h"
#import "Model.h"
#import "NewsCell.h"

@interface QuizVC ()

-(void)initalizeData;

@end

@implementation QuizVC

@synthesize quizArray=_quizArray;
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

+(id)initWithQuiz{
    
    return [[[QuizVC alloc] initWithNibName:@"QuizVC" bundle:nil] autorelease];
}


#pragma mark - Life Cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self initalizeData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.quizArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    ActivityDTO *activity = [self.quizArray objectAtIndex:indexPath.row];
    
    NSString *feedType= [(VPBaseDTO *)activity.data lookUpType];
    
    NSLog(@"feedType string %@ , %d",feedType,indexPath.row);
    
    if([feedType isEqualToString:kFeedTypeText]){
        
        TrueFalseCell *cell=[TrueFalseCell resuableCellForTableView:self.tableView withOwner:self];
        cell.indexPath=indexPath;
        [cell updateCellWithData:activity];
        return cell;
        
    }
    else if([feedType isEqualToString:KFeedTypeImage]){
        
        ImageCell *cell=[ImageCell resuableCellForTableView:self.tableView withOwner:self];
        [cell updateCellWithData:activity];
        return cell;
    }
    else if([feedType isEqualToString:KFeedTypeNews]){
        
        NewsCell *cell=[NewsCell resuableCellForTableView:self.tableView withOwner:self];
        [cell updateCellWithData:activity];
        return cell;
    }
    
    
    return nil;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ActivityDTO *activity = [self.quizArray objectAtIndex:indexPath.row];
    NSString *feedType= [(VPBaseDTO *)activity.data lookUpType];
    
    if ([feedType isEqualToString:kFeedTypeText]) {
        
        return 44.0;
        
    }else if ([feedType isEqualToString:KFeedTypeImage]) {
        
        
        
        return 159.0;
    }
    else if ([feedType isEqualToString:KFeedTypeNews]){
        
        return 100.0;
    }
    
    
    return 0.0;
}



#pragma mark Custom Methods

/**
 *	just create a dummy method to show how this code works
 */

-(void)initalizeData
{
    self.quizArray=[NSMutableArray array];
    
    NSMutableDictionary *dict=[NSMutableDictionary dictionary];
    
    [dict setObject:[NSString stringWithFormat:@"This is question type"] forKey:@"ques"];
    [dict setObject:[NSNumber numberWithBool:NO] forKey:@"isTrue"];
    [dict setObject:[NSNumber numberWithBool:NO] forKey:@"isFalse"];
    [dict setObject:@"text" forKey:@"type"];
    
    [self.quizArray addObject:[ActivityDTO activityWithDictionary:dict]];
    
    NSMutableDictionary *dict1=[NSMutableDictionary dictionary];
    
    [dict1 setObject:[NSString stringWithFormat:@"This is image type cell"] forKey:@"name"];
    [dict1 setObject:@"http://www.google.com" forKey:@"thumb_url"];
    [dict1 setObject:@"Image" forKey:@"type"];
    [self.quizArray addObject:[ActivityDTO activityWithDictionary:dict1]];
    
    NSMutableDictionary *dict2=[NSMutableDictionary dictionary];
    [dict2 setObject:[NSString stringWithFormat:@"This is news type cell"] forKey:@"name"];
    [dict2 setObject:@"http://www.google.com" forKey:@"message"];
    [dict2 setObject:@"call" forKey:@"status"];
    [dict2 setObject:@"12-22-33 12:22:22" forKey:@"time"];
    [dict2 setObject:@"news" forKey:@"type"];
    [self.quizArray addObject:[ActivityDTO activityWithDictionary:dict2]];
    
    [self.tableView reloadData];
}


-(void)trueButtonPressedAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
    ActivityDTO *activity = [self.quizArray objectAtIndex:indexPath.row];
    QuestionDTO *question=(QuestionDTO *)activity.data;
    question.isTrue=YES;
    question.isFalse=NO;
    activity.data = (QuestionDTO *)question;
    [self.quizArray replaceObjectAtIndex:indexPath.row withObject:activity];
    
    [self.tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];;

}
-(void)falseButtonPressedAtIndexPath:(NSIndexPath *)indexPath{
    
    
    ActivityDTO *activity = [self.quizArray objectAtIndex:indexPath.row];
    QuestionDTO *question=(QuestionDTO *)activity.data;
    question.isTrue=NO;
    question.isFalse=YES;
    activity.data = (QuestionDTO *)question;
    [self.quizArray replaceObjectAtIndex:indexPath.row withObject:activity];
    
    [self.tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];;
}
@end
