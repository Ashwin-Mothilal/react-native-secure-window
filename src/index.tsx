import { NativeModules } from 'react-native';

type SecureWindowType = {
  changeSecureWindow(canEnableSecureWindow: boolean): void;
};

const { SecureWindow } = NativeModules;

export default SecureWindow as SecureWindowType;
