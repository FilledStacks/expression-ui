import React from 'react';
import Rive, {Alignment, Fit, RiveRef} from 'rive-react-native';
import {ScrollView, StyleSheet, ViewStyle} from 'react-native';

import StateEvent from './state-event';

interface BaseExpressionViewProps {
  resourceName: string;
  artboardName: string;
  onEvent?: (event: StateEvent, riveRef: RiveRef | null) => void;
  scrollable?: boolean;
  textValues?: Record<string, string>;
  stateMachineName?: string;
  fit?: Fit;
  style?: ViewStyle;
}

const BaseExpressionView: React.FC<BaseExpressionViewProps> = ({
  resourceName,
  artboardName,
  onEvent,
  scrollable = false,
  textValues = {},
  stateMachineName,
  fit = Fit.Cover,
  style,
}) => {
  const riveRef = React.useRef<RiveRef>(null);

  React.useEffect(() => {
    if (riveRef.current) {
      for (const [key, value] of Object.entries(textValues)) {
        riveRef.current.setTextRunValue(key, value);
      }
    }
  }, [riveRef, textValues]);

  const riveView = (
    <Rive
      ref={riveRef}
      resourceName={resourceName}
      artboardName={artboardName}
      fit={fit}
      alignment={scrollable ? Alignment.TopCenter : Alignment.Center}
      stateMachineName={stateMachineName}
      onRiveEventReceived={event =>
        onEvent?.(new StateEvent(event.name), riveRef.current)
      }
      style={Object.assign(style ?? {}, scrollable ? styles.animation : {})}
    />
  );

  return scrollable ? (
    <ScrollView contentContainerStyle={styles.container}>{riveView}</ScrollView>
  ) : (
    riveView
  );
};

const styles = StyleSheet.create({
  container: {
    flexGrow: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  animation: {
    width: '100%',
  },
});

export default BaseExpressionView;
