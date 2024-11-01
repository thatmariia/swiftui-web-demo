# Minimum Example: cross-platform SwiftUI deployment for native and web apps

This repository provides a basic example of using SwiftUI to deploy both a native iOS/macOS app and a web app with shared UI and ViewModel components.

This setup allows you to build and run a native app alongside a web app, showcasing how SwiftUI components can be shared across platforms.


## Project Structure

This example consists of three projects:

1. `SharedUIComponentsDemo:` A multiplatform Swift package that includes shared UI components and ViewModels.
2. `iOSMacAppDemo:` A native iOS/macOS app developed in Xcode that uses SharedUIComponentsDemo for its UI.
3. `WebAppDemo:` A Swift package for a macOS executable that uses SharedUIComponentsDemo and SwiftWebUI to render a web-based interface.


## Project Details

### SharedUIComponentsDemo

This is a Multiplatform Swift package with UI components that are shared across both the native app and the web app.

* **Dependencies:** `SwiftWebUI` ([version 0.3.2](https://github.com/SwiftWebUI/SwiftWebUI/tree/0.3.2)) as a dependency in [Package.swift](SharedUIComponentsDemo/Package.swift).
* **Purpose:** To centralize the UI and ViewModel code, ensuring consistency between the apps and facilitating code reuse.

### iOSMacAppDemo

This project is the native app for iOS and macOS, developed in Xcode.

* **Dependencies:** `SharedUIComponentsDemo` as a local dependency.
* **Running:** Open `iOSMacAppDemo` in Xcode and run it directly for either iOS or macOS.

### WebAppDemo

This project is a macOS executable that uses SwiftWebUI to serve the UI as a web app.

* **Dependencies:**
	* `SharedUIComponentsDemo` as a dependency in [Package.swift](WebAppDemo/Package.swift).
	* `SwiftWebUI` ([version 0.3.2](https://github.com/SwiftWebUI/SwiftWebUI/tree/0.3.2)) as a dependency in [Package.swift](WebAppDemo/Package.swift).
* **Running:** Use the following command to run `WebAppDemo` in the terminal with the necessary Swift flag:

```
swift run -Xswiftc -DPLATFORM_SWIFTWEBUI WebAppDemo
```

The `PLATFORM_SWIFTWEBUI` flag is used to conditionally compile code specific to the web app in WebAppDemo. This is necessary to handle platform-specific differences between `SwiftUI` and `SwiftWebUI`.

Once running, the web app will be accessible at <http://localhost:1337>.


## Versions and Requirements

* Swift: 6.0
* Xcode: 16.1
* SwiftWebUI: 0.3.2


## How it works: Cross-Platform Type Aliases

In the `SharedUIComponentsDemo` package, the [CrossPlatform.swift] file enables flexible usage of `SwiftUI` and `SwiftWebUI` by defining type aliases that adapt to the platform at compile time.


```swift
// CrossPlatform.swift in SharedUIComponentsDemo

#if PLATFORM_SWIFTWEBUI
import SwiftWebUI
public typealias CPView = View
public typealias CPText = Text
#else
import SwiftUI
public typealias CPView = SwiftUI.View
public typealias CPText = SwiftUI.Text
#endif
```

* `CPView`: Represents a generic `View` type that adapts to either `SwiftUI.View` or `SwiftWebUI.View`, depending on the platform.
* `CPText`: Similarly, represents a generic `Text` type, switching between `SwiftUI.Text` and `SwiftWebUI.Text`.

If you need to add additional components, you can extend [CrossPlatform.swift] by defining more type aliases


- [CrossPlatform.swift]: SharedUIComponentsDemo/Sources/SharedUIComponentsDemo/CrossPlatform.swift




