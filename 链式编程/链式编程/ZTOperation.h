//
//  ZTOperation.h
//  链式编程
//
//  Created by tony on 17/2/8.
//  Copyright © 2017年 ZThink. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CaculatorMaker.h"
@interface ZTOperation : NSObject
@property (nonatomic, strong) CaculatorMaker *maker;
-(NSString *)str;
-(ZTOperation *)getInfo;
-(ZTOperation *)getInfoWithStr:(NSString *)str;

+(CaculatorMaker *)getInfo:(void(^)(CaculatorMaker * make))infoBlock;
@end
