//
//  SecondViewController.h
//  MyTabbedApp
//
//  Created by Neil Inglese on 9/29/14.
//  Copyright (c) 2014 ___Neil_Inglese___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface SecondViewController : UIViewController{
    AVAudioPlayer *theAudio;
    BOOL isPaused;
}

- (IBAction)sound1:(id)sender;
- (IBAction)sound2:(id)sender;
- (IBAction)sound3:(id)sender;
- (IBAction)sound4:(id)sender;
- (IBAction)btnPlay:(id)sender;
- (IBAction)btnStop:(id)sender;
- (IBAction)btnPause:(id)sender;
- (IBAction)slider:(id)sender;
- (IBAction)sliderchanged:(id)sender;


@property (weak, nonatomic) IBOutlet UIButton *Pause;
@property (weak, nonatomic) IBOutlet UISlider *volumecontrol;


@end

