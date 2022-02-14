import React, { Component } from "react";
import { View, Text, NativeModules, TouchableOpacity } from "react-native";

const Alert: any = NativeModules.MyAlert;
// const Toast: any = NativeModules.Toast;

export default class App extends Component {
  render() {
    return (
      <View style={{ flex: 1, alignItems: "center", justifyContent: "center" }}>
        <TouchableOpacity
          onPress={() => {
            Alert.ShowMessage("Awesome!its working!", 3);
            // Toast.showToast('Berhasil', 2);
          }}>
          <Text>Click Me!</Text>
        </TouchableOpacity>
      </View>
    );
  }
}
