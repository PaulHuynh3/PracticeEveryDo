//
//  ToDo.h
//  PracticeEveryDo
//
//  Created by Paul on 2017-11-09.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDo : NSObject

@property NSString* name;
@property int priority;
@property NSString* taskDescription;
@property BOOL isCompleted;

-(instancetype)initWith:(NSString*)name description:(NSString*)description priority:(int)priority complete:(BOOL)isComplete;


@end
