//
//  SecondViewController.m
//  MyTabbedApp
//
//  Created by Neil Inglese on 9/29/14.
//  Copyright (c) 2014 ___Neil_Inglese___. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()


@end

@implementation SecondViewController
@synthesize Pause, volumecontrol;
BOOL *isPaused = NO;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sound1:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"zelda" ofType:@"wav"];
    
    theAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
    
    [theAudio play];
    isPaused = NO;
            [Pause setTitle:@"Pause" forState:UIControlStateNormal];
                    Pause.backgroundColor = [UIColor grayColor];
}

- (IBAction)sound2:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"prelude" ofType:@"wav"];
    
    theAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
    
    [theAudio play];
    isPaused = NO;
            [Pause setTitle:@"Pause" forState:UIControlStateNormal];
                    Pause.backgroundColor = [UIColor grayColor];
}

- (IBAction)sound3:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"wav"];
    
    theAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
    
    [theAudio play];
    isPaused = NO;
            [Pause setTitle:@"Pause" forState:UIControlStateNormal];
                    Pause.backgroundColor = [UIColor grayColor];
}

- (IBAction)sound4:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"fight" ofType:@"wav"];
    
    theAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
    
    [theAudio play];
    isPaused = NO;
            [Pause setTitle:@"Pause" forState:UIControlStateNormal];
                    Pause.backgroundColor = [UIColor grayColor];
}

- (IBAction)btnPlay:(id)sender {
/*ignore me*/
}

- (IBAction)btnStop:(id)sender {
    [theAudio stop];
}

- (IBAction)btnPause:(id)sender {
    if (isPaused == NO) {
        [theAudio pause];
        isPaused = YES;
        [Pause setTitle:@"Play" forState:UIControlStateNormal];
        Pause.backgroundColor = [UIColor greenColor];
        
    } else {
        [theAudio play];
        isPaused = NO;
        [Pause setTitle:@"Pause" forState:UIControlStateNormal];
                Pause.backgroundColor = [UIColor grayColor];
            }

}

- (IBAction)slider:(id)sender {
    theAudio.volume = volumecontrol.value;
}

- (IBAction)sliderchanged:(id)sender {
    /*ignore me*/
}
@end
