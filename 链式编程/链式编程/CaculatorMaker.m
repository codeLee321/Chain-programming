//
//  CaculatorMaker.m
//  链式编程
//
//  Created by tony on 17/2/8.
//  Copyright © 2017年 ZThink. All rights reserved.
//

#import "CaculatorMaker.h"

@implementation CaculatorMaker
-(CaculatorMaker *)ksname{
    return self;
}
//获取姓名
-(CaculatorMaker *(^)(NSString *))kName{

    return ^CaculatorMaker * (NSString *name){
        _name = name;
        return self;
    };
}

//获取性别
-(CaculatorMaker *(^)(NSString *))kSex{
    return ^CaculatorMaker * (NSString *sex){
        _sex = sex;
        return self;
    };
}

//获取年龄
-(CaculatorMaker *(^)(int))kYear{

    return ^CaculatorMaker * (int year){
        _year = year;
        return self;
    };
}
@end
