//
//  FourthViewController.m
//  MyTabbedApp
//
//  Created by Neil Inglese on 10/20/14.
//  Copyright (c) 2014 ___Neil_Inglese___. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController
@synthesize MyWebView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.MyWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.neilinglese.com"]]];
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
