import React, { useRef, useState } from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  Button,
  Alert,
  Image,
} from 'react-native';
import TextInput from '../components/TextInput';
import { TouchableOpacity } from 'react-native';

export default function App() {
  return (
    <View style={styles.container}>
      <Text style={styles.mainText}>

        <Text style={styles.titleText}>Bem vindo</Text>
        {"\n"}
        <Text>Preencha os campos para fazer login.</Text>
      </Text>

      <View style={styles.viewStyle}>
        <TextInput label="Email" placeholderInput="Digite seu Email"/>
        <TextInput label="Senha" placeholderInput="Digite sua Senha"/>
      </View>


      <TouchableOpacity style={styles.button} onPress={() => { }}>
        <View ><Text style={styles.textButton}>Continuar</Text></View>

      </TouchableOpacity>
    </View>

  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'flex-start',
    flexDirection: 'column',
    // justifyContent: 'space-around',
    backgroundColor: '#FFF',
  },

  button: {
    backgroundColor: 'purple',
    borderRadius: 10,
    height: 60,
    width: '80%',
    alignItems: 'center',
    justifyContent: 'center',
  },

  textButton: {
    color: 'white'
  },

  splashImage: {
    height: 200,
    width: 200,
  },

  mainText: {
    textAlign: 'center',
    marginBottom: 50,
  },

  titleText: {
    fontSize: 30,
    fontWeight: 'bold',
    color: 'black',
  },

  viewStyle: {
    width: '100%',
    alignItems: 'center',
  }
});
