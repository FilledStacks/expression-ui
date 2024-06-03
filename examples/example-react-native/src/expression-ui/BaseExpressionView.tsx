import React from 'react';
import StateEvent from './state-event';
import Rive, {Fit, RiveRef} from 'rive-react-native';
import {ScrollView} from 'react-native';

interface BaseExpressionViewProps {
  resourceName: string;
  artboardName: string;
  onEvent?: (event: StateEvent) => void;
  scrollable?: boolean;
  stateMachineName?: string;
  fit?: Fit;
}

const BaseExpressionView: React.FC<BaseExpressionViewProps> = ({
  resourceName,
  artboardName,
  onEvent,
  scrollable = false,
  stateMachineName,
  fit = Fit.Cover,
}) => {
  const riveRef = React.useRef<RiveRef>(null);

  const riveView = (
    <Rive
      ref={riveRef}
      resourceName={resourceName}
      artboardName={artboardName}
      fit={fit}
      stateMachineName={stateMachineName}
      onRiveEventReceived={event => onEvent?.(new StateEvent(event.name))}
    />
  );

  return scrollable ? <ScrollView>{riveView}</ScrollView> : riveView;
};

export default BaseExpressionView;
