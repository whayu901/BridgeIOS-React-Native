import React, {Component} from 'react';
import {
  Platform,
  View,
  Text,
  NativeModules,
  TouchableOpacity,
} from 'react-native';

const Alert = NativeModules.MyAlert;

export default class App extends Component {
  render() {
    return (
      <View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}>
        <TouchableOpacity
          onPress={() => {
            Alert.ShowMessage('Awesome!its working!', 2);
          }}>
          <Text>Click Me!</Text>
        </TouchableOpacity>
      </View>
    );
  }
}
