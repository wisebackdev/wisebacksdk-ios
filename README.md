# Wiseback SDK for iOS
**Wiseback iOS SDK** allows you to easily implement Wiseback forms to your iOS apps.

## Requirements
The SDK requires your app to target **iOS 9.0+**.

## Installation
To use Wiseback SDK framework in your app, proceed as follows:
1. In XCode add the framework (WisebackSDK.framework) to your project:

> a. On your project select active **Target**.
  
> b. In **General** tab find **Embedded Binaries**, then click **+** sign.
  
> c. Choose **Add Another** button and select **WisebackSDK.framework** framework under **WisebackSDK folder**.

2. Make sure the framework is listed at **Linked Frameworks and Libraries**.


## Usage

### Quick start

First you need to import the framework.
```swift
import WisebackSDK
```

Here is a sample code to show a Wiseback form:
```swift
let wview = WiseView(frame: self.view.bounds)
wview.showForm(formID: "VgcfNL", targetView: self.view)  //change "VgcfNL" with your formID
```

### Customize `form`
You can add animation to the form using the `animation` parameter of method showForm.
```swift
wview.showForm(formID: "VgcfNL", targetView: self.view, animation: .Up)
```

You can also set a custom form size using the `frame` parameter while initializing.
```swift
let frame = CGRect(x: 0, y: 20, width: self.view.frame.width, height: self.view.frame.height)
let wview = WiseView(frame: frame)
```

### Add `Delegates`
The framework implements the following delegates:
* `startLoading`: When form starts loading
* `formOpened`: When form has loaded
* `errorLoading`: When an error occures
* `formClosed`: When the form has closed

Example usage:

* First add `WiseViewDelegate` to your class.
```swift
class ViewController: UIViewController, WiseViewDelegate {
...
  wview.delegateWise = self
...
}
```

* Then implement delegate methods.

```swift
func startLoading() {
    print("Loading form started")
}
func formOpened() {
    print("Form opened")
}
func errorLoading(error: Error) {
    print("An error occurred: \(error.localizedDescription)")
}
func formClosed() {
    print("Form closed")
}
```
