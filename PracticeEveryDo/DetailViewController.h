//
//  DetailViewController.h
//  PracticeEveryDo
//
//  Created by Paul on 2017-11-10.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "ViewController.h"
#import "ToDo.h"

@interface DetailViewController : ViewController


@property (weak, nonatomic) ToDo* taskObject;

@property (weak, nonatomic) IBOutlet UILabel *taskNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;


@property (weak, nonatomic) IBOutlet UILabel *completeLabel;


@end
