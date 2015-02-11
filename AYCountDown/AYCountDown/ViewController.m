//
//  ViewController.m
//  AYCountDown
//
//  Created by zyyang on 2/4/15.
//  Copyright (c) 2015 Andrew Yang. All rights reserved.
//

#import "ViewController.h"
#import "AYCountDownWithBlock.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButtonTapped:(id)sender {
  
  [AYCountDownWithBlock countDownWithStep:1 startFrom:10 onTick:^BOOL(int tick, BOOL isLastTick) {
      self.countDownLabel.text = [@(tick) stringValue];
      if (isLastTick) {
          NSLog(@"Last tick.");
      }
      return YES;
  }];
}
@end
