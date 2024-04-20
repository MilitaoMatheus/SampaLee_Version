import 'package:flutter/material.dart';
import 'package:sampalee/cultura.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: const Color.fromARGB(255, 212, 16, 2), /// Cor de fundo
        foregroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 255, 28, 12),
        currentIndex: _currentIndex,
        iconSize: 24, // Tamanho dos icones
        selectedFontSize: 16, // Fonte selecionada
        unselectedFontSize: 12, // // Fonte não selecionada
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255), // Ícone ativo
        unselectedItemColor: const Color.fromARGB(255, 233, 230, 230), // Ícone desativado
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold), // 
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
          // Adicione aqui o código que deseja executar quando um item do BottomNavigationBar for pressionado
          switch (index) {
            case 0:
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Cultura()));
              break;
            case 1:
              // Ação quando "Home" é pressionado
              break;
            case 2:
              // Ação quando "Culinária" é pressionado
              break;
            default:
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_rounded),
            label: "Cultura",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_business_rounded),
            label: "Culinária",
          ),
        ],
      ),
      body: Stack( // Empilha widgets dentro do body como filhos
          fit: StackFit.expand, // Define a proporção dos filhos
          children: [
          Image.asset( 
          'assets/img/background.png', // Caminho da imagem de fundo
          fit: BoxFit.cover, //Expande imagem por todo o espaço disponível
        ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'SAMPA-LEE',
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 10, 10, 10),
                  ),
                ),
                const Text(
                  'A CULTURA QUE VOCÊ PROCURA',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 10, 10, 10),
                  ),
                ),
                Image.asset(
                  'assets/img/logolee.png',
                  height: 300.0,
                  width: 300.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Ações do botão aqui
                  },
                  child: const Text(
                    'LOCALIZAÇÃO',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 10, 10, 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
