## AlertDSL

This is declarative DSL wrapper around UIAlertController based on @_functionBuilder for UIKit.

## Installation

Support swift 5.1 and heigher, iOS 13+.

### Swift Package Manager

```
.package(url: "https://github.com/artemch/AlertDSL.git", from: "0.1.0")
```

### CocoaPods

```
pod 'AlertDSL', :git => "https://github.com/artemch/AlertDSL.git", :tag => '0.1.0'
```

## Example

Alert example:
```swift
Alert {
    Title("Alert title")
    Message("Alert Message")
    Action(title: "Ok") { print("Ok action") }
    Action.cancel(title: "Cancel") { print("Cancel action") }
}.present(on: self)
```

Action sheet example:
```swift
ActionSheet {
    Title("Action Sheet title")
    Message("Action Sheet Message")
    Action(title: "Ok") { print("Ok action") }
    Action(title: "Destructive-1", style: .destructive) { print("Destructive-1 action") }
    Action.destructive(title: "Destructive-2") { print("Destructive-2 action") }
    Action.cancel(title: "Cancel") { print("Cancel action") }
}.present(on: self)
```

For interactive example look at the AlertDSL-Example project.
