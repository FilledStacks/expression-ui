import React from 'react';
import {NavigationContainer} from '@react-navigation/native';
import {createNativeStackNavigator} from '@react-navigation/native-stack';

import StartupScreen from './screens/StartupScreen';
import CrossFrameworkScreen from './screens/CrossFrameworkScreen';
import DeveloperFriendlyScreen from './screens/DeveloperFriendlyScreen';
import PixelPerfectionScreen from './screens/PixelPerfectionScreen';
import ComposableScreen from './screens/ComposableScreen';

import type {NativeStackNavigationOptions} from '@react-navigation/native-stack';

const options: NativeStackNavigationOptions = {
  headerShown: false,
};

export type StackParamList = {
  Startup: undefined;
  CrossFramework: undefined;
  DeveloperFriendly: undefined;
  PixelPerfection: undefined;
  Composable: undefined;
};

const Stack = createNativeStackNavigator<StackParamList>();

export default function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator initialRouteName="Startup" screenOptions={options}>
        <Stack.Screen name="Startup" component={StartupScreen} />
        <Stack.Screen name="CrossFramework" component={CrossFrameworkScreen} />
        <Stack.Screen
          name="DeveloperFriendly"
          component={DeveloperFriendlyScreen}
        />
        <Stack.Screen
          name="PixelPerfection"
          component={PixelPerfectionScreen}
        />
        <Stack.Screen name="Composable" component={ComposableScreen} />
      </Stack.Navigator>
    </NavigationContainer>
  );
}
