//
//  threeViewController.m
//  storyBoardTest
//
//  Created by 张智华 on 2018/11/19.
//  Copyright © 2018年 张智华. All rights reserved.
//

#import "threeViewController.h"
#import "fourViewController.h"

@interface threeViewController ()



@end

@implementation threeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)jumpThree:(UIButton *)sender {
    
    [self performSegueWithIdentifier:@"fourViewController" sender:nil];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"触发该场景切换的sender对象的类型是:%@",[sender class]);
    //方法一,使用KVC给B 也就是目标场景传值
    fourViewController *destinationController=[segue destinationViewController];
    destinationController.label.text = @"123";
    destinationController.yongjiang = @"永江";
    //方法2,使用属性传值,需导入相关的类.h
    //BViewController *bController=[segue destinationViewController];
    //bController.number=@188;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
