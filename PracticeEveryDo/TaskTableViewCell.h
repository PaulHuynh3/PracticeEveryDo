//
//  TaskTableViewCell.h
//  PracticeEveryDo
//
//  Created by Paul on 2017-11-09.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TaskTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *taskName;

@property (weak, nonatomic) IBOutlet UILabel *taskPriority;



@end
