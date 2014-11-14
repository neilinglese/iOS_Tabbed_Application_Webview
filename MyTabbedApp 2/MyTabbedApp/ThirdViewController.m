//
//  ThirdViewController.m
//  MyTabbedApp
//
//  Created by Neil Inglese on 9/29/14.
//  Copyright (c) 2014 ___Neil_Inglese___. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController
@synthesize box;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)Move:(id)sender {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationRepeatCount:10];
    [UIView setAnimationRepeatAutoreverses:YES];
    
    CGPoint pos = box.center;
    CGPoint pos1 = pos;
    pos.y = 420.0f;
    box.center = pos;
    box.center = pos1;
    
    [UIView commitAnimations];
    

}

- (IBAction)Grow:(id)sender {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationRepeatCount:5];
    [UIView setAnimationRepeatAutoreverses:YES];
    
    CGRect b = box.bounds;
    b.size.height = 200;
    b.size.width = 200;
    box.bounds = b;
    
    [UIView commitAnimations];
}

- (IBAction)Shrink:(id)sender {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationRepeatCount:5];
    [UIView setAnimationRepeatAutoreverses:YES];
    
    CGRect b = box.bounds;
    b.size.height = 50;
    b.size.width = 50;
    box.bounds = b;
    
    [UIView commitAnimations];
}

- (IBAction)Reset:(id)sender {
    [UIView beginAnimations:nil context:NULL];
    
    CGRect b = box.bounds;
    b.size.height = 100;
    b.size.width = 100;
    box.bounds = b;
    
    [UIView commitAnimations];
}

- (IBAction)Flip:(id)sender {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    [UIView setAnimationRepeatCount:5];
    [UIView setAnimationRepeatAutoreverses:YES];
    
    box.backgroundColor = [UIColor blackColor];
    box.backgroundColor = [UIColor blueColor];
    
    [UIView commitAnimations];
}
@end
