import React from 'react';
import Rive from 'rive-react-native';

import {
  COMPOSABLE_VIEW,
  EXPRESSION_UI_RIVE_RESOURCE,
} from '../../constants/expression_constants';

export default function ComposableScreen(): React.JSX.Element {
  return (
    <Rive
      resourceName={EXPRESSION_UI_RIVE_RESOURCE}
      artboardName={COMPOSABLE_VIEW}
      onRiveEventReceived={_ => console.log('App starts here!')}
    />
  );
}
