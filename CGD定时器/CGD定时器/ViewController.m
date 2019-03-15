//
//  ViewController.m
//  CGD定时器
//
//  Created by gandijun on 2019/3/15.
//  Copyright © 2019 HeQing. All rights reserved.
//

#import "ViewController.h"
#import "HQTimer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    [HQTimer execTask:^{
//        NSLog(@"111111---%@",[NSThread currentThread]);
//    } start:2.0 interval:1 repeats:YES async:YES];
    
    [HQTimer execTask:self selector:@selector(task) start:2 interval:1 repeats:YES async:YES];
    
}

- (void)task{
    NSLog(@"111111---%@",[NSThread currentThread]);
}

@end
