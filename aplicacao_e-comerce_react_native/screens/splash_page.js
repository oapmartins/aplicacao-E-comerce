
import {
    AppRegistry,
    StyleSheet,
    Text,
    View,
    Button,
    Alert,
    Image,
} from 'react-native';
import { TouchableOpacity } from 'react-native';


export default function SplashPage({ navigation }) {
    const continuar = () => {
        navigation.navigate('LoginPage');
    }

    return (

        <View style={styles.container}>

            <Text style={styles.mainText}>
                <Text style={styles.titleText}>SEU ZÉ</Text>
                {"\n"}
                <Text>Fazer as compras nunca foi tão fácil</Text>
            </Text>

            <Image
                style={styles.splashImage}
                source={require('../assets/images/splash_2.png')}
            />

            <TouchableOpacity style={styles.button} onPress={() => { }}>
                <View ><Text style={styles.textButton} onPress={continuar}>Continuar</Text></View>

            </TouchableOpacity>
        </View>

    );
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        alignItems: 'center',
        justifyContent: 'center',
        flexDirection: 'column',
        justifyContent: 'space-around',
    },

    button: {
        backgroundColor: 'purple',
        borderRadius: 10,
        height: 60,
        width: '85%',
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
    },

    titleText: {
        fontSize: 30,
        fontWeight: 'bold',
        color: 'purple',
    },

});
