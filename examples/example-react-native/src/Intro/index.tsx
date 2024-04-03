import {NativeStackScreenProps} from '@react-navigation/native-stack';
import React from 'react';
import Rive, {Fit} from 'rive-react-native';
import {StackParamList} from '../App';

type Props = NativeStackScreenProps<StackParamList, 'Intro'>;

export default function Intro({navigation}: Props): React.JSX.Element {
  return (
    <Rive
      resourceName="counter"
      artboardName="intro-screen"
      stateMachineName="ExperienceStateMachine"
      fit={Fit.Cover}
      onRiveEventReceived={_ => navigation.navigate('Counter')}
    />
  );
}
