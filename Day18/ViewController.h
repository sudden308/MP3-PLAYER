//
//  ViewController.h
//  Day18
//
//  Created by Lu Chen on 14-1-21.
//  Copyright (c) 2014年 smallsuccess.com.au. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <AVFoundation/AVAudioPlayer.h>

@interface ViewController : UIViewController

@property (nonatomic, retain) AVAudioPlayer *audioPlayer;

-(IBAction)play;
-(IBAction)stop;

@end
