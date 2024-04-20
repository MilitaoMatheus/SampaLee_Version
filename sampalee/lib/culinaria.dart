import 'package:flutter/material.dart';

void culinaria() {
  runApp(const Culinaria());
}

class Culinaria extends StatelessWidget {
  const Culinaria({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Culinaria - Seus Restaurantes'),
        backgroundColor: const Color.fromARGB(255, 212, 16, 2), /// Cor de fundo
        foregroundColor: Colors.white,
      ),
        bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 212, 16, 2),
        currentIndex: 1,
        iconSize: 24, // Tamanho dos icones
        selectedFontSize: 16, // Fonte selecionada
        unselectedFontSize: 12, // // Fonte não selecionada
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255), // Ícone ativo
        unselectedItemColor: const Color.fromARGB(255, 233, 230, 230), // Ícone desativado
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold), // 
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
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/img/background.png', // Imagem de fundo
            fit: BoxFit.cover,
          ),

          Center(
            child: ListView(
              padding: const EdgeInsets.all(50.0),
              children: const <Widget>[
                Text(
                  "RESTAURANTE TAKO",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.red, // Cor do sublinhado
                    decorationThickness: 1, // Espessura do sublinhado
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 10, 10, 10),
                  ),
                ),
                Text(
                  'RODÍZIO: SASHIMIS DE ATUM, SALMÃO E PEIXE BRANCO, YAKISOBA E TEMAKI\n',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color:   Color.fromARGB(255, 212, 16, 2),
                  ),
                  ),

                  Text(
                  "RESTAURANTE MUGUI",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.red, // Cor do sublinhado
                    decorationThickness: 1, // Espessura do sublinhado
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 10, 10, 10),
                  ),
                ),
                Text(
                  "PRATOS QUENTES: UDON GYOZAS, TEMPURÁ, SOBÁ LÁMEN, MISSOHIRO",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color:   Color.fromARGB(255, 212, 16, 2),
                  ),
                  ),

                  Text(
                  "RESTAURANTE TAMPOPO",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.red, // Cor do sublinhado
                    decorationThickness: 1, // Espessura do sublinhado
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 10, 10, 10),
                  ),
                ),
                Text(
                  "PANQUECAS FRITAS: BACON, FRANGO E CARNE DE PORCO FEITOS DE TEMPURÁ E MOLHO",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color:   Color.fromARGB(255, 212, 16, 2),
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