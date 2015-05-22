//
//  BaseTableViewCell.m
//  DifferentTabelViewTest
//
//  Created by gouhuijie on 15/5/22.
//  Copyright (c) 2015年 NIYUAN. All rights reserved.
//

#import "BaseTableViewCell.h"

@implementation BaseTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        _imageV = [[UIImageView alloc] initWithFrame:CGRectMake(15, 22, 38, 48)];
        _imageV.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:_imageV];
        
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(63, 22, 73, 24)];
        _nameLabel.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:_nameLabel];
        
        _depName = [[UILabel alloc] initWithFrame:CGRectMake(142, 27, 82, 12)];
        _depName.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:_depName];
        
        _hostipalName = [[UILabel alloc] initWithFrame:CGRectMake(63, 60, 17, 17)];
        _hostipalName.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:_hostipalName];
                
    }
    return self;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
