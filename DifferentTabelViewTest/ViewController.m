//
//  ViewController.m
//  DifferentTabelViewTest
//
//  Created by gouhuijie on 15/5/22.
//  Copyright (c) 2015年 NIYUAN. All rights reserved.
//

#import "ViewController.h"
#import "TimeTableViewCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    _myTableView.delegate = self;
    _myTableView.dataSource = self;
    [self.view addSubview:_myTableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    return <#expression#>;
    return 2;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *cellIdentifer = [NSString stringWithFormat:@"cell%lu",(long)indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            TimeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifer];
            if (cell == nil)
            {
                cell = [[TimeTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifer];
                
            }
            cell.timelabel.text = @"2011-12-23";
            return cell;
            break;
        }
        case 1:
        {
            TimeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifer];
            if (cell == nil)
            {
                cell = [[TimeTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifer];
                
            }
            cell.timelabel.text = @"2015--5-22";
            return cell;
            break;
        }
        default:
            break;
    }
    return nil;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 200.f;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
