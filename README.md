# react-native-secure-window

Enabling or disabling secure window on Android

If you aren't aware what this package is about check [this](https://developer.android.com/reference/android/view/WindowManager.LayoutParams#FLAG_SECURE) link

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

There is no official way to secure screen in iOS. Any hacky PR's are welcome

## License

MIT
