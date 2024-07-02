import React from 'react';
import {NativeStackScreenProps} from '@react-navigation/native-stack';

import {StackParamList} from '../../App';
import {DEVELOPER_FRIENDLY_VIEW} from '../../constants/expression_constants';
import ExpressionView from '../../components/ExpressionView';

type Props = NativeStackScreenProps<StackParamList, 'DeveloperFriendly'>;

export default function DeveloperFriendlyScreen({
  navigation,
}: Props): React.JSX.Element {
  return (
    <ExpressionView
      artboardName={DEVELOPER_FRIENDLY_VIEW}
      onEvent={_ => navigation.push('PixelPerfection')}
    />
  );
}
