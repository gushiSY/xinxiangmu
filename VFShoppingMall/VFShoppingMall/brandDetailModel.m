//
//  brandDetailModel.m
//  VFShoppingMall
//
//  Created by gushi on 16/9/30.
//  Copyright © 2016年 jinyuankeji. All rights reserved.
//

#import "brandDetailModel.h"

@implementation brandDetailModel

+(brandDetailModel* )modelWithDict:(NSDictionary *)dict{
    return [[self alloc]initWithDictionary:dict];
}
-(instancetype)initWithDictionary:(NSDictionary *)dict{
    if (self=[super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

@end
