//
//  DetailViewController.m
//  PracticeEveryDo
//
//  Created by Paul on 2017-11-10.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()


@end

@implementation DetailViewController
//view may load before item gets set.
-(void)setTaskObject:(ToDo *)taskObject{
        _taskObject = taskObject;
    [self configureView];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureView];
    
}

-(void)configureView{
    self.taskNameLabel.text = self.taskObject.name;
    self.descriptionLabel.text = self.taskObject.taskDescription;
    
    NSString *priorityNumber = [NSString stringWithFormat:@"%i",self.taskObject.priority];
    self.priorityLabel.text = priorityNumber;
    
    if (self.taskObject.isCompleted){
        self.completeLabel.text = @"Done";
    } else {
        self.completeLabel.text = @"UNFINISHED";
    }
}



@end
