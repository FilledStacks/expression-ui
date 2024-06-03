import React from 'react';
import {NativeStackScreenProps} from '@react-navigation/native-stack';

import {StackParamList} from '../../App';
import {
  EXPRESSION_UI_RIVE_RESOURCE,
  INTRO_VIEW,
} from '../../constants/expression_constants';
import BaseExpressionView from '../../expression-ui/BaseExpressionView';

type Props = NativeStackScreenProps<StackParamList, 'Startup'>;

export default function StartupScreen({navigation}: Props): React.JSX.Element {
  return (
    <BaseExpressionView
      resourceName={EXPRESSION_UI_RIVE_RESOURCE}
      artboardName={INTRO_VIEW}
      onEvent={_ => navigation.replace('CrossFramework')}
    />
  );
}
