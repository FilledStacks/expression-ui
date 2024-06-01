import React from 'react';
import {NativeStackScreenProps} from '@react-navigation/native-stack';
import Rive from 'rive-react-native';

import {StackParamList} from '../../App';
import {
  CROSS_FRAMEWORK_VIEW,
  EXPRESSION_UI_FILE_PATH,
} from '../../constants/expression_constants';

type Props = NativeStackScreenProps<StackParamList, 'CrossFramework'>;

export default function CrossFrameworkScreen({
  navigation,
}: Props): React.JSX.Element {
  return (
    <Rive
      resourceName={EXPRESSION_UI_FILE_PATH}
      artboardName={CROSS_FRAMEWORK_VIEW}
      onRiveEventReceived={_ => navigation.push('DeveloperFriendly')}
    />
  );
}
