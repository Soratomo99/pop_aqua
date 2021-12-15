If you see at the first run we have 2 print times. It's not a bug of my app, but also all Flutter apps using redux.

The Author of Flutter Redux - Brianegan said: "As a heads up, I managed to reproduce the issue, and I'm trying to find the root cause. It seems like the onDidChange callback is only sometimes being run twice by Flutter, but it's unclear why that's happening.".

https://github.com/brianegan/flutter_redux/issues/76

I think it happen because Flutter Redux onWillChange and onDidChange check current values then check incoming values listened. Each time, all widgets inside StoreConnector are rendered. Therefore, if the app renders 60 times per second, we have 30 fps. I make this simple app that demonstrates the the problem. I can't wait for https://github.com/brianegan/flutter_redux/issues/224

May be the true bug is here https://github.com/flutter/flutter/issues/42068 . If "print" many times in one frame, "identical" will be printed.


