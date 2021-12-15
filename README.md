If you see at the first run we have 2 print times. It's not a bug of my app, but also all Flutter apps using redux.

The Author of Flutter Redux - Brianegan said: "As a heads up, I managed to reproduce the issue, and I'm trying to find the root cause. It seems like the onDidChange callback is only sometimes being run twice by Flutter, but it's unclear why that's happening.".

https://github.com/brianegan/flutter_redux/issues/76


