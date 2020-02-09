import React, { useCallback, useState } from 'react';
import { Button, StyleSheet, Text, View } from 'react-native';
import SyncStorage from 'SyncStorage';

export default function App() {
  const [state, setState] = useState<any>();
  const getItem = useCallback(() => {
    setState(SyncStorage.setItem('key', 'value'));
  }, []);

  return (
    <View style={styles.container}>
      <Text>{JSON.stringify(state)}</Text>
      <Button title={'Get Item from TM & JSI'} onPress={getItem} />
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
