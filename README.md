# Minimum Example of Deploying SwiftUI for Apps and Web Apps Simultaneously

This repository provides a basic example of using SwiftUI to deploy both a native iOS/macOS app and a web app with shared UI and ViewModel components.

This setup allows you to build and run a native app alongside a web app, showcasing how SwiftUI components can be shared across platforms.


## Project Structure

This example consists of three projects:

1. `SharedUIComponentsDemo:` A multiplatform Swift package that includes shared UI components and ViewModels.
2. `iOSMacAppDemo:` A native iOS/macOS app developed in Xcode that uses SharedUIComponentsDemo for its UI.
3. `WebAppDemo:` A Swift package for a macOS executable that uses SharedUIComponentsDemo and SwiftWebUI to render a web-based interface.


## Project Details

### SharedUIComponentsDemo

This is a Swift package with UI components and ViewModels that are shared across both the native app and the web app.

* **Platform:** Multiplatform (iOS/macOS)
* **Purpose:** To centralize the UI and ViewModel code, ensuring consistency between the apps and facilitating code reuse.

### iOSMacAppDemo

This project is the native app for iOS and macOS, developed in Xcode.

* **Dependencies:** `SharedUIComponentsDemo` as a local dependency.
* **Running:** Open `iOSMacAppDemo` in Xcode and run it directly for either iOS or macOS.

### WebAppDemo

This project is a macOS executable that uses SwiftWebUI to serve the UI as a web app.

* **Dependencies:**
	* `SharedUIComponentsDemo` as a dependency in `Package.swift`.
	* `SwiftWebUI` ([version 0.3.2](https://github.com/SwiftWebUI/SwiftWebUI/tree/0.3.2)) as a dependency in `Package.swift`.
* **Running:** Use the following command to run `WebAppDemo` in the terminal with the necessary Swift flag:
```
swift run -Xswiftc -DPLATFORM_SWIFTWEBUI WebAppDemo
```
Once running, the web app will be accessible at <http://localhost:1337>.


## Versions and Requirements

* Swift: 6.0
* Xcode: 16.1
* SwiftWebUI: 0.3.2

## Additional Notes

* **Conditional Compilation:** The `PLATFORM_SWIFTWEBUI` flag is used to conditionally compile code specific to the web app in WebAppDemo. This is necessary to handle platform-specific differences between `SwiftUI` and `SwiftWebUI`.

