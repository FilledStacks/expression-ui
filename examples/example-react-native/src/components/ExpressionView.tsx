import React from 'react';
import {Fit} from 'rive-react-native';
import {ViewStyle} from 'react-native';

import StateEvent from '../expression-ui/state-event';
import BaseExpressionView from '../expression-ui/BaseExpressionView';
import {EXPRESSION_UI_RIVE_RESOURCE} from '../constants/expression_constants';

interface ExpressionViewProps {
  artboardName: string;
  onEvent?: (event: StateEvent) => void;
  scrollable?: boolean;
  stateMachineName?: string;
  fit?: Fit;
  style?: ViewStyle;
}

const ExpressionView: React.FC<ExpressionViewProps> = ({
  artboardName,
  onEvent,
  scrollable,
  stateMachineName,
  fit,
  style,
}) => {
  return (
    <BaseExpressionView
      resourceName={EXPRESSION_UI_RIVE_RESOURCE}
      artboardName={artboardName}
      onEvent={onEvent}
      scrollable={scrollable}
      stateMachineName={stateMachineName}
      fit={fit}
      style={style}
    />
  );
};

export default ExpressionView;
