import React from 'react';
import {Fit} from 'rive-react-native';

import StateEvent from '../expression-ui/state-event';
import BaseExpressionView from '../expression-ui/BaseExpressionView';
import {EXPRESSION_UI_RIVE_RESOURCE} from '../constants/expression_constants';

interface ExpressionViewProps {
  artboardName: string;
  onEvent?: (event: StateEvent) => void;
  scrollable?: boolean;
  stateMachineName?: string;
  fit?: Fit;
}

const ExpressionView: React.FC<ExpressionViewProps> = ({
  artboardName,
  onEvent,
  scrollable,
  stateMachineName,
  fit,
}) => {
  return (
    <BaseExpressionView
      resourceName={EXPRESSION_UI_RIVE_RESOURCE}
      artboardName={artboardName}
      onEvent={onEvent}
      scrollable={scrollable}
      stateMachineName={stateMachineName}
      fit={fit}
    />
  );
};

export default ExpressionView;
