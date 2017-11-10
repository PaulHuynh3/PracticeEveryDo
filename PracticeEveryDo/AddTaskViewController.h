//
//  AddTaskViewController.h
//  PracticeEveryDo
//
//  Created by Paul on 2017-11-09.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "ViewController.h"
#import "ToDo.h"

@protocol saveTaskDelegate

-(void)addTask:(ToDo*)task;

@end

@interface AddTaskViewController : ViewController
@property (weak, nonatomic) id<saveTaskDelegate> addDelegate;



@end
