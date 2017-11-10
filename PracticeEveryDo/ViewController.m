//
//  ViewController.m
//  PracticeEveryDo
//
//  Created by Paul on 2017-11-09.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "ViewController.h"
#import "TaskTableViewCell.h"
#import "ToDo.h"
#import "AddTaskViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource,saveTaskDelegate>
@property NSMutableArray<ToDo *> *tasks;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createTasks];
    [self.tableView reloadData];
}



-(void)createTasks{
    ToDo *taskOne = [[ToDo alloc]initWith:@"clean" description:@"the toilet" priority:3 complete:NO];
    ToDo *taskTwo = [[ToDo alloc]initWith:@"buy" description:@"buy milk" priority:1 complete:NO];
    
    self.tasks = [[NSMutableArray alloc]initWithObjects:taskOne, taskTwo, nil];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.tasks.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    TaskTableViewCell* taskViewCell = [tableView dequeueReusableCellWithIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    
    taskViewCell.taskName.text = self.tasks[indexPath.row].name;
    NSString* stringNumber = [NSString stringWithFormat:@"%i",self.tasks[indexPath.row].priority];
    taskViewCell.taskPriority.text = stringNumber;
    
                                              
    return taskViewCell;
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier  isEqual: @"addIdentifier"]){
        
        AddTaskViewController *addTask = [segue destinationViewController];
        addTask.addDelegate = self;
    }
    
    
}

-(void)addTask:(ToDo *)task {
    [self.tasks addObject:task];
    [self.tableView reloadData];
}




@end
