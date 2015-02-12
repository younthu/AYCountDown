# AYCountDown
Simple code for counting down with dispatch loop

Providing simple count down callback, stop at tick <= 0 or user returned NO in callback block.

Sample Code :

    [AYCountDownWithBlock countDownWithStep:1 startFrom:10 onTick:^BOOL(int tick, BOOL isLastTick) {
      self.countDownLabel.text = [@(tick) stringValue];
      if (isLastTick) {
          NSLog(@"Last tick.");
      }
      return YES;
      }];

#  How to use it

You can use it in two ways:

* Download and add "AYCountDownWithBlock.h" & "AYCountDownWithBlock.h" into your project.
* Install it via cocoapods by adding following line:

        pod "AYCountDown", :git=> 'https://github.com/younthu/AYCountDown.git'


Enjoy it!
