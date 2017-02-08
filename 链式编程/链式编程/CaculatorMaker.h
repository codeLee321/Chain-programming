//
//  CaculatorMaker.h
//  链式编程
//
//  Created by tony on 17/2/8.
//  Copyright © 2017年 ZThink. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CaculatorMaker : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *sex;
@property(nonatomic,assign)int  year;

-(CaculatorMaker *)ksname;
//获取姓名
-(CaculatorMaker *(^)(NSString *))kName;

//获取性别
-(CaculatorMaker *(^)(NSString *))kSex;

//获取年龄
-(CaculatorMaker *(^)(int))kYear;
@end
