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
