//
//  ZTOperation.m
//  链式编程
//
//  Created by tony on 17/2/8.
//  Copyright © 2017年 ZThink. All rights reserved.
//

#import "ZTOperation.h"

@implementation ZTOperation
-(NSString *)str{
    return @"heh";
}
-(ZTOperation *)getInfoWithStr:(NSString *)str{
    return  self;
}
-(ZTOperation *)getInfo{
    return self;
}
+(CaculatorMaker *)getInfo:(void(^)(CaculatorMaker * make))infoBlock{

    CaculatorMaker * mgk = [[CaculatorMaker alloc]init];
    infoBlock(mgk);
    return mgk;
}
@end
