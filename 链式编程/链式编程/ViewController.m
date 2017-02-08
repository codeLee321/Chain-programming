//
//  ViewController.m
//  链式编程
//
//  Created by tony on 17/2/8.
//  Copyright © 2017年 ZThink. All rights reserved.
//



/**
   本Demo是仔细研究简书大神的笔记做的一个链式编程的尝试（附上地址http://www.jianshu.com/p/87ef6720a096）
 */
#import "ViewController.h"
#import "ZTOperation.h"
@interface ViewController ()
@property (nonatomic, strong) CaculatorMaker *maker;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.maker = [ZTOperation getInfo:^(CaculatorMaker *make) {
    CaculatorMaker *m = make.ksname;
    NSLog(@"m=%@",m.description);
        make.kName(@"小李").kSex(@"男").kYear(25);
    }];
    NSLog(@"self.maker=%@",self.maker.description);
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"姓名：%@ 性别：%@年龄：%d",self.maker.name,self.maker.sex,self.maker.year);
}

@end
