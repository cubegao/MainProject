//
//  ViewController.m
//  MainProject
//
//  Created by Gaowz on 2019/6/6.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

#import "ViewController.h"
#import <CTMediator/CTMediator.h>
#import <A_Category/CTMediator+A.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *buttn = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttn setTitle:@"To A" forState:UIControlStateNormal];
    [buttn setFrame:CGRectMake(100, 100, 100, 100)];
    [buttn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:buttn];
    
    [buttn addTarget:self action:@selector(toA) forControlEvents:UIControlEventTouchUpInside];
}


- (void)toA{
    UIViewController *viewController = [[CTMediator sharedInstance] A_aViewController];
    if (!viewController) {
        NSLog(@"viewController = nil");
        return;
    }
    [self presentViewController:viewController animated:YES completion:nil];
}


@end
