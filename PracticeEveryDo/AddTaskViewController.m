//
//  AddTaskViewController.m
//  PracticeEveryDo
//
//  Created by Paul on 2017-11-09.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "AddTaskViewController.h"
#import "ToDo.h"



@interface AddTaskViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextField;
@property (weak, nonatomic) IBOutlet UITextField *priorityTextField;
@property (weak, nonatomic) IBOutlet UITextField *isCompleteTextField;


@end


@implementation AddTaskViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (IBAction)saveButtonTapped:(UIButton *)sender {
    
    ToDo *newTask =[[ToDo alloc]initWith:self.nameTextField.text description:self.descriptionTextField.text priority:3 complete:self.isCompleteTextField.text];
    
    [self.addDelegate addTask:newTask];
    
    [self.navigationController popViewControllerAnimated:YES];
}




@end
