//
//  ToDo.m
//  PracticeEveryDo
//
//  Created by Paul on 2017-11-09.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "ToDo.h"

@implementation ToDo


-(instancetype)initWith:(NSString*)name description:(NSString*)description priority:(int)priority complete:(BOOL)isComplete {
    
    if (self = [super init]) {
        
        _name = name;
        _taskDescription = description;
        _priority = priority;
        _isCompleted = isComplete;
        
    }
    
    return self;
    
}




@end
