import { NativeModules } from 'react-native';

type SyncStorageType = {
  getDeviceName(): Promise<string>;
};

const { SyncStorage } = NativeModules;

export default SyncStorage as SyncStorageType;
