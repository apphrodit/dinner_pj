import { View, FlatList, Image, Text, TouchableOpacity } from "react-native";
import style from "./style";

const pedidosScreen = ({ navigation }) => {
  const [pedidos, setPedido] = useState([]);

  useEffect(() => {
    fetch("http://localhost:3000/pedido/cozinha", { method: "GET" })
      .then((response) => response.json())
      .then((data) => {
        console.log(data);
        setPedido(data);
      });
  }, []);
  return (
    <View style={style.container}>
      <FlatList
        data={pedidos}
        keyExtractor={(item) => item.id.toString()}
        renderItem={({ item }) => (
          <TouchableOpacity
            style={style.pedido}
            onPress={() =>
              navigation.navigate("DetalhesScreen", { id: item.id })
            }
          >
            <Text style={style.pedidoText}>Id: {item.id}</Text>
            <Text style={style.pedidoText}>Hora: {item.dataPedido}</Text>
          </TouchableOpacity>
        )}
      ></FlatList>
    </View>
  );
};

export default pedidosScreen;
