//
//  ViewController.h
//  AYCountDown
//
//  Created by zyyang on 2/4/15.
//  Copyright (c) 2015 Andrew Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *countDownLabel;

@property (weak, nonatomic) IBOutlet UIButton *actionButton;

@property (nonatomic) BOOL isCounting;
@end

