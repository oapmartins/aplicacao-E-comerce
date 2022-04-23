import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  Button,
  Alert,
  Image,
  TouchableOpacity,
} from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';
import 'react-native-gesture-handler';
import SplashPage from './screens/splash_page';
import LoginPage from './screens/login_page';

function MyStack() {

  const Stack = createStackNavigator();

  return (
    <Stack.Navigator>
      <Stack.Screen options={{headerShown: false}} name="SplashPage" component={SplashPage} />
      <Stack.Screen         options={{
          title: '',
          headerTintColor: 'black',
          headerTitleStyle: {
            fontWeight: 'bold',
          },
        }} name="LoginPage"  component={LoginPage} />
    </Stack.Navigator>
  );
}

export default function App() {
  return (
    <NavigationContainer>
      <MyStack />
    </NavigationContainer>
  );
}