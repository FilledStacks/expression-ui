import React from 'react';
import Intro from './Intro';
import {NavigationContainer} from '@react-navigation/native';
import {createNativeStackNavigator} from '@react-navigation/native-stack';
import Counter from './Counter';

import type {NativeStackNavigationOptions} from '@react-navigation/native-stack';

const options: NativeStackNavigationOptions = {
  headerShown: false,
};

export type StackParamList = {
  Intro: undefined;
  Counter: undefined;
};

const Stack = createNativeStackNavigator<StackParamList>();

export default function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator initialRouteName="Intro" screenOptions={options}>
        <Stack.Screen name="Intro" component={Intro} />
        <Stack.Screen name="Counter" component={Counter} />
      </Stack.Navigator>
    </NavigationContainer>
  );
}
