import React from 'react';
import {NativeStackScreenProps} from '@react-navigation/native-stack';
import Rive from 'rive-react-native';

import {StackParamList} from '../../App';
import {
  EXPRESSION_UI_RIVE_RESOURCE,
  PIXEL_PERFECTION_VIEW,
} from '../../constants/expression_constants';

type Props = NativeStackScreenProps<StackParamList, 'PixelPerfection'>;

export default function PixelPerfectionScreen({
  navigation,
}: Props): React.JSX.Element {
  return (
    <Rive
      resourceName={EXPRESSION_UI_RIVE_RESOURCE}
      artboardName={PIXEL_PERFECTION_VIEW}
      onRiveEventReceived={_ => navigation.push('Composable')}
    />
  );
}
