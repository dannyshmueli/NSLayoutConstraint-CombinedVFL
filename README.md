# NSLayoutConstraint-CombinedVFL
Category for NSLayout allowing Combined Visual Formatting Language

### Usage:
```obj-c
[NSLayoutConstraint constraintsWithCombinedVisualFormat:@"H:|[myView]| V:|[myView]|" views:@{@"myView" : someView}]];
```

### Adding project:
* Add as submodule:
```
cd your/project/submodules/
git submodule add https://github.com/dannyshmueli/NSLayoutConstraint-CombinedVFL.git
```
* Add the .h and .m to your Xcode project
