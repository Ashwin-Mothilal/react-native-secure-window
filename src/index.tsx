import { NativeModules } from 'react-native';

type SecureWindowType = {
  multiply(a: number, b: number): Promise<number>;
};

const { SecureWindow } = NativeModules;

export default SecureWindow as SecureWindowType;
