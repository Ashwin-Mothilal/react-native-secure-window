import * as React from 'react';
import { StyleSheet, View, Text, Button } from 'react-native';
import SecureWindow from 'react-native-secure-window';

export default function App() {
  const [isScreenWindowSecured, setScreenWindowSecured] =
    React.useState<boolean>(false);

  React.useEffect(() => {
    SecureWindow.changeSecureWindow(isScreenWindowSecured);
  }, [isScreenWindowSecured]);

  return (
    <View style={styles.container}>
      <Text>
        isScreenWindowsSecured - {isScreenWindowSecured ? 'Yes' : 'No'}
      </Text>
      <Button
        title="Toggle Screen Window state"
        onPress={() => {
          setScreenWindowSecured(
            (prevIsScreenWindowSecured) => !prevIsScreenWindowSecured
          );
        }}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});
