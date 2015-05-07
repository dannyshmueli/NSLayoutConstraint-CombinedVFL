# NSLayoutConstraint-CombinedVFL
Category for NSLayoutConstraint allowing one call for both horizantal and vertical [Visual Formatting Language](https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/AutolayoutPG/VisualFormatLanguage/VisualFormatLanguage.html)

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
