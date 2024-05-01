import 'package:flutter/material.dart';
import 'package:sampalee/culinaria.dart';
import 'package:sampalee/main.dart';

void cultura() {
  runApp(const Cultura());
}

class Cultura extends StatelessWidget {
  const Cultura({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar( // Barra no topo do app
        title: const Text('Cultura - Lugares Importantes'),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 212, 16, 2), /// Cor de fundo
      ),

        bottomNavigationBar: BottomNavigationBar( // Barra de navegação ao final da página
        backgroundColor: const Color.fromARGB(255, 212, 16, 2),
        currentIndex: 0, // Aponta pro primeiro item, já que a contagem inicia no 0
        iconSize: 24, // Tamanho dos icones
        selectedFontSize: 16, // Fonte selecionada
        unselectedFontSize: 12, // // Fonte não selecionada
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255), // Ícone ativo
        unselectedItemColor: const Color.fromARGB(255, 233, 230, 230), // Ícone desativado
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold), // 
        onTap: (int index) {
          // Código para execução da troca de tela
          switch (index) {
            case 0:
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Cultura())); // Caminho pra tela "Cultura"
            break;
            
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage())); // Caminho pra tela "Home"
            break;
            
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Culinaria())); // Caminho pra tela "Culinária"
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
                  "MUSEU DA MIGRAÇÃO JAPONESA",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.red, // Código para sublinhar
                    decorationThickness: 1, // Definir o tamanho do sublinhado
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 10, 10, 10),
                  ),
                ),

                Text(
                  'APRESENTA AO PÚBLICO COMO AS FAMÍLIAS JAPONESAS CHEGARAM AO BRASIL, TRAZENDO CULTURA, E ARTE EM SEUS TRÊS ANDARES\n',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color:   Color.fromARGB(255, 212, 16, 2),
                  ),
                ),

                Text(
                  "TEMPLO LOHAN",
                  textAlign: TextAlign.start,
                  style: TextStyle( // Estilização do texto
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.red,
                    decorationThickness: 1,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 10, 10, 10),
                  ),
                ),

                Text(
                  "UM TEMPLO ANTIGO EMPENHADO EM PRODUZIR CONTEÚDO DE BUDISMO, KUNG FU, WU QI, MEDICINA TRADICIONAL, ARTES, FILOSOFIA E LITERATURA CHINESA",
                  textAlign: TextAlign.justify, // Justificar o texto
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