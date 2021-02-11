import * as React from 'react';
import { StyleSheet, View, Text, Button } from 'react-native';
import SecureWindow from 'react-native-secure-window';

export default function App() {
  const [isScreenWindowSecured, setScreenWindowSecured] = React.useState<
    boolean | undefined
  >();

  React.useEffect(() => {
    SecureWindow.changeSecureWindow(true);
  }, []);

  return (
    <View style={styles.container}>
      <Text>isScreenWindowsSecured - {isScreenWindowSecured}</Text>
      <Button
        title={`Toggle Screen Window state ${isScreenWindowSecured}`}
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
