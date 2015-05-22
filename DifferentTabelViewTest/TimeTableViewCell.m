//
//  TimeTableViewCell.m
//  DifferentTabelViewTest
//
//  Created by gouhuijie on 15/5/22.
//  Copyright (c) 2015年 NIYUAN. All rights reserved.
//

#import "TimeTableViewCell.h"

@implementation TimeTableViewCell
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        //depName是父类的一个属性。我们可以在子类中获得
        self.depName.frame = CGRectMake(100, 150, 100, 40);
        _timelabel = [[UILabel alloc] initWithFrame:CGRectMake(0,80, 100, 50)];
        _timelabel.backgroundColor = [UIColor blueColor];
        [self.contentView addSubview:_timelabel];
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
