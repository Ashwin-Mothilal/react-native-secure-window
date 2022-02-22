# react-native-secure-window

## Android

Enabling or disabling secure window on Android
If you aren't aware what this package is about check [this](https://developer.android.com/reference/android/view/WindowManager.LayoutParams#FLAG_SECURE) link

## iOS

The latest version adds support for iOS. \
iOS does not have a secure window feature like Android, but here we chose to add a blurred view. \
We hook into the event [`UIApplicationWillResignActiveNotification`](https://developer.apple.com/documentation/uikit/uiapplicationwillresignactivenotification) to enabled the blurred view and hook into the event [`UIApplicationDidBecomeActiveNotification`](https://developer.apple.com/documentation/uikit/uiapplicationdidbecomeactivenotification) to disable it again.

## Installation

```sh
npm install react-native-secure-window --save
```

```sh
yarn add react-native-secure-window
```

## Usage

```js
import SecureWindow from "react-native-secure-window";

//Can be used imperatively
SecureWindow.changeSecureWindow(true);
```

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT
