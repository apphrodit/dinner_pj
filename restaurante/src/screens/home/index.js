import { View, Image, Text, TouchableOpacity } from "react-native";
import style from "./style";

const HomeScreen = ({ navigation }) => {
  return (
    <View style={style.container}>
      <TouchableOpacity
        style={style.button}
        onPress={() => navigation.navigate("PedidosScreen")}
      >
        <Text style={style.text}>Pedidos</Text>
      </TouchableOpacity>
    </View>
  );
};

export default HomeScreen;
