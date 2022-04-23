import React from 'react';
import { View, Text, TextInput, StyleSheet } from 'react-native';

const styles = StyleSheet.create({
    container: {
        height: 65,
        width: '80%',
        position: 'relative',
        marginBottom: 25,
    },
    labelContainer: {
        position: 'absolute',
        backgroundColor: '#FFF',
        top: -16,
        left: 25,
        padding: 5,
        zIndex: 50,
    },
    textInput: {
        flex: 1,
        borderWidth: 1,
        borderColor: "gray",
        backgroundColor: '#FFF',

        justifyContent: 'flex-end',
        height: 44,
        borderRadius: 15,
        paddingHorizontal: 25,
    }
})

const CustomTextInput = ({ label, style, placeholderInput, ...props }) => (
    <View style={styles.container}>
        <TextInput style={styles.textInput}  placeholder={placeholderInput}/>
        <View style={styles.labelContainer}>
            <Text>{label}</Text>
        </View>
    </View>
);

export default CustomTextInput;