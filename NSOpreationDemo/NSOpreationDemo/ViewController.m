//
//  ViewController.m
//  NSOpreationDemo
//
//  Created by song ximing on 2016/11/30.
//  Copyright © 2016年 song ximing. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.title = @"NSOperation Test";
    self.view.backgroundColor = [UIColor darkGrayColor];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self NSoperationTest];
}

- (void)NSoperationTest { // http://www.jianshu.com/p/2de9c776f226
    NSInvocationOperation *op = [[NSInvocationOperation alloc]initWithTarget:self selector:@selector(operation) object:nil];
    [op start]; // 直接start 不会开线程
}

- (void)operation {
    NSLog(@"這是一個操作--当前线程%@",[NSThread currentThread]);
}

@end

//
