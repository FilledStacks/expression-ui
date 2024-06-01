import React from 'react';
import {NativeStackScreenProps} from '@react-navigation/native-stack';
import Rive from 'rive-react-native';

import {StackParamList} from '../../App';
import {
  DEVELOPER_FRIENDLY_VIEW,
  EXPRESSION_UI_FILE_PATH,
} from '../../constants/expression_constants';

type Props = NativeStackScreenProps<StackParamList, 'DeveloperFriendly'>;

export default function DeveloperFriendlyScreen({
  navigation,
}: Props): React.JSX.Element {
  return (
    <Rive
      resourceName={EXPRESSION_UI_FILE_PATH}
      artboardName={DEVELOPER_FRIENDLY_VIEW}
      onRiveEventReceived={_ => navigation.push('PixelPerfection')}
    />
  );
}
