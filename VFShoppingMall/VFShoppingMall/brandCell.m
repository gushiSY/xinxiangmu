//
//  brandCell.m
//  VFShoppingMall
//
//  Created by gushi on 16/9/30.
//  Copyright © 2016年 jinyuankeji. All rights reserved.
//

#import "brandCell.h"
#import "FrameMainLFL.h"
#import "AFNetworking.h"
#import "MBProgressHUD.h"
#import "UIImageView+WebCache.h"

@implementation brandCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

+(brandCell*)brandWithTableView:(UITableView *)tableView{
    brandCell * cell = [tableView dequeueReusableCellWithIdentifier:@"brandCell"];
    if (cell == nil){
        cell = [[brandCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"brandCell"];
    }
    return cell;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self=[super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        [self.contentView removeConstraints:self.contentView.constraints];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        UIImageView * iconImageView = [[UIImageView alloc]initWithFrame:RectMake_LFL(13, 9, 40, 40)];
        [iconImageView sd_setImageWithURL:[NSURL URLWithString:self.model.storeIcon]];
        [self.contentView addSubview:iconImageView];
        
        UILabel * storeNameLb = [[UILabel alloc]initWithFrame:RectMake_LFL(59, 26, 63, 26)];
        storeNameLb.font = [UIFont systemFontOfSize:26];
        storeNameLb.text = self.model.storeName;
        [self.contentView addSubview:storeNameLb];
        
        UILabel * numShopLb = [[UILabel alloc]initWithFrame:RectMake_LFL(375-104, 23, 80, 26)];
        numShopLb.text = [NSString stringWithFormat:@"上新%@件商品",self.model.newnum];
        [self.contentView addSubview:numShopLb];
        
        UIImageView * arrowImage = [[UIImageView alloc]initWithFrame:RectMake_LFL(375-23, 23, 5, 26)];
        arrowImage.image = [UIImage imageNamed:@"you"];
        [self.contentView addSubview:arrowImage];
        
        UIScrollView * shopDetailScroView = [[UIScrollView alloc]initWithFrame:RectMake_LFL(13, 60, 375-13, 90)];
        shopDetailScroView.contentSize = SizeMake_LFL(94*[self.model.newnum intValue]-4, 88);
        [self.contentView addSubview:shopDetailScroView];
        
        int x=0;
        for (int i=0; i<[self.model.newnum intValue]; i++) {
            UIImageView * detailImage = [[UIImageView alloc]initWithFrame:RectMake_LFL(x, 0, 88, 88)];
            [detailImage sd_setImageWithURL:[NSURL URLWithString:self.model.detailModelArr[i].goods]];
            x += 92;
            [shopDetailScroView addSubview:detailImage];
        }
    }
    return self;
}
-(CGFloat)cellHeight{
    return 100;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
