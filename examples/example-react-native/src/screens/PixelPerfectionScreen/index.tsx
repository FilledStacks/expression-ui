import React from 'react';
import {NativeStackScreenProps} from '@react-navigation/native-stack';

import {StackParamList} from '../../App';
import {PIXEL_PERFECTION_VIEW} from '../../constants/expression_constants';
import ExpressionView from '../../components/ExpressionView';

type Props = NativeStackScreenProps<StackParamList, 'PixelPerfection'>;

export default function PixelPerfectionScreen({
  navigation,
}: Props): React.JSX.Element {
  return (
    <ExpressionView
      artboardName={PIXEL_PERFECTION_VIEW}
      onEvent={_ => navigation.push('Composable')}
    />
  );
}
