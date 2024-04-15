import React from 'react';
import Rive, {Fit, RiveRef} from 'rive-react-native';

export default function Counter(): React.JSX.Element {
  const riveRef = React.useRef<RiveRef>(null);
  let counter = 0;

  function handleCountIncrement(): void {
    counter++;
    riveRef.current?.setTextRunValue('Counter', `${counter}`);
  }

  return (
    <Rive
      ref={riveRef}
      resourceName="counter"
      artboardName="counter"
      stateMachineName="CounterStateMachine"
      fit={Fit.Cover}
      onRiveEventReceived={_ => handleCountIncrement()}
    />
  );
}
