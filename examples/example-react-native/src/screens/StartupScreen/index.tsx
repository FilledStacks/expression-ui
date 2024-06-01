import React from 'react';
import {NativeStackScreenProps} from '@react-navigation/native-stack';
import Rive from 'rive-react-native';

import {StackParamList} from '../../App';
import {
  EXPRESSION_UI_FILE_PATH,
  INTRO_VIEW,
} from '../../constants/expression_constants';

type Props = NativeStackScreenProps<StackParamList, 'Startup'>;

export default function StartupScreen({navigation}: Props): React.JSX.Element {
  return (
    <Rive
      resourceName={EXPRESSION_UI_FILE_PATH}
      artboardName={INTRO_VIEW}
      onRiveEventReceived={_ => navigation.replace('CrossFramework')}
    />
  );
}
