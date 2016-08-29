//
//  ViewController.m
//  CoreJPush
//
//  Created by ym on 16/8/29.
//  Copyright © 2016年 王宁. All rights reserved.
//

#import "ViewController.h"
#import "CoreJPush.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //设置极光推送的别名
    [CoreJPush setTags:[NSSet setWithArray:@[@"movie"]] alias:@"uid_2" resBlock:^(BOOL res, NSSet *tags, NSString *alias) {
        if(res)
        {
            NSLog(@"设置成功：tags=%@,alias=%@",tags,alias);
        }
        else
        {
            NSLog(@"设置失败");
        }

    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
