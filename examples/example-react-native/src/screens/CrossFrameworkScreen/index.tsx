import React from 'react';
import {NativeStackScreenProps} from '@react-navigation/native-stack';

import {StackParamList} from '../../App';
import {CROSS_FRAMEWORK_VIEW} from '../../constants/expression_constants';
import ExpressionView from '../../components/ExpressionView';

type Props = NativeStackScreenProps<StackParamList, 'CrossFramework'>;

export default function CrossFrameworkScreen({
  navigation,
}: Props): React.JSX.Element {
  return (
    <ExpressionView
      artboardName={CROSS_FRAMEWORK_VIEW}
      onEvent={_ => navigation.push('DeveloperFriendly')}
    />
  );
}
