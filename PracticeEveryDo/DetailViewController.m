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

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureView];
    
}

-(void)configureView{
    self.taskNameLabel.text = self.taskObject.name;
    self.descriptionLabel.text = self.taskObject.taskDescription;
    
    NSString *priorityNumber = [NSString stringWithFormat:@"%i",self.taskObject.priority];
    self.priorityLabel.text = priorityNumber;
    
    NSString * completedBool = [NSString stringWithFormat:@"%d",self.taskObject.isCompleted];
    self.completeLabel.text = completedBool;
    
}



@end
