//
//  ThirdViewController.h
//  MyTabbedApp
//
//  Created by Neil Inglese on 9/29/14.
//  Copyright (c) 2014 ___Neil_Inglese___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *box;

- (IBAction)Move:(id)sender;

- (IBAction)Grow:(id)sender;
- (IBAction)Shrink:(id)sender;
- (IBAction)Reset:(id)sender;
- (IBAction)Flip:(id)sender;

@end
