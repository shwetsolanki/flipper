import { NativeModules } from 'react-native';

type FiretvType = {
  multiply(a: number, b: number): Promise<number>;
};

const { Firetv } = NativeModules;

export default Firetv as FiretvType;
