//
//  ViewController.m
//  Day18
//
//  Created by Lu Chen on 14-1-21.
//  Copyright (c) 2014年 smallsuccess.com.au. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize audioPlayer;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIColor *bgColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"IMG_0123.JPG"]];
    [self.view setBackgroundColor:bgColor];
    
    NSString *filePath = [[NSBundle mainBundle]pathForResource:@"Lorde-Royals" ofType:@"mp3"];
    
    NSURL *fileURL = [[NSURL alloc]initFileURLWithPath:filePath];
    
    audioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:fileURL error:nil];
    
    [audioPlayer prepareToPlay];
    
}

-(IBAction)play
{
    audioPlayer.currentTime = 0;
    [audioPlayer play];
}

-(IBAction)stop
{
    [audioPlayer stop];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
