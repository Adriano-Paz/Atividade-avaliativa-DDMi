import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imgs = [
    "images/card1.jpeg",
    "images/card2.jpeg",
    "images/card3.jpeg",
    "images/card4.jpeg",
    "images/card5.jpeg",
    "images/card6.jpeg",
    "images/card7.jpeg",
  ];

  Widget lojaItem({
    required IconData icone,
    required String nome,
    required String avaliacao,
    required String quantidade,
    required String tempo,
    required String entrega,
  }) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 78,
            height: 78,
            decoration: BoxDecoration(
              color: Color(0xFFF5F5F5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icone, size: 38, color: Colors.orangeAccent),
          ),

          SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        nome,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 4),

                Row(
                  children: [
                    Icon(Icons.star, color: Color(0xFFE0A000), size: 14),
                    SizedBox(width: 3),
                    Text(
                      avaliacao,
                      style: TextStyle(fontSize: 13, color: Colors.black87),
                    ),
                    SizedBox(width: 3),
                    Expanded(
                      child: Text(
                        '($quantidade) • $tempo • $entrega',
                        style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(width: 8),

          Icon(Icons.favorite_border, color: Colors.grey, size: 24),
        ],
      ),
    );
  }

  Widget itemRestaurante(String nome) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 130,
          height: 110,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(0xFFF5F5F5),
          ),
        ),
        SizedBox(height: 8),
        SizedBox(
          width: 130,
          child: Row(
            children: [
              Icon(Icons.store, color: Colors.orangeAccent, size: 20),
              SizedBox(width: 6),
              Expanded(
                child: Text(
                  nome,
                  style: TextStyle(fontSize: 16),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget filtroBotao({required String texto, bool mostrarSeta = false}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            texto,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
          if (mostrarSeta) ...[
            SizedBox(width: 6),
            Icon(Icons.keyboard_arrow_down, size: 22, color: Colors.black),
          ],
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.orangeAccent,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(color: Colors.black),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.black),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined, color: Colors.black),
            label: "Busca",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fireplace_outlined, color: Colors.black),
            label: "Hits",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
            label: "Pedidos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined, color: Colors.black),
            label: "Perfil",
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Olá, seja bem-vindo!',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Text('R. da Penha, 163', style: TextStyle(fontSize: 16)),
                  ],
                ),
                Spacer(),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0xF5F5F5F5),
                  ),
                  child: Icon(Icons.diamond, color: Colors.purple),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0xF5F5F5F5),
                  ),
                  child: Icon(
                    Icons.notifications_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 16)),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      margin: EdgeInsets.only(top: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xF5F5F5F5),
                      ),
                      child: Icon(
                        Icons.local_pizza,
                        color: Colors.orangeAccent,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('Restaurantes', style: TextStyle(fontSize: 12)),
                  ],
                ),
                SizedBox(width: 25),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      margin: EdgeInsets.only(top: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xF5F5F5F5),
                      ),
                      child: Icon(Icons.shopping_cart, color: Colors.red),
                    ),
                    SizedBox(height: 5),
                    Text('Mercados', style: TextStyle(fontSize: 12)),
                  ],
                ),
                SizedBox(width: 25),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      margin: EdgeInsets.only(top: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xF5F5F5F5),
                      ),
                      child: Icon(
                        Icons.medical_services_outlined,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('Farmácias', style: TextStyle(fontSize: 12)),
                  ],
                ),
                SizedBox(width: 25),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      margin: EdgeInsets.only(top: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xF5F5F5F5),
                      ),
                      child: Icon(Icons.coffee, color: Colors.brown),
                    ),
                    SizedBox(height: 5),
                    Text('Bebidas', style: TextStyle(fontSize: 12)),
                  ],
                ),
                SizedBox(width: 25),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      margin: EdgeInsets.only(top: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xF5F5F5F5),
                      ),
                      child: Icon(
                        Icons.airplane_ticket,
                        color: Colors.purpleAccent,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('Viagens', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
                ),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      margin: EdgeInsets.only(top: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xF5F5F5F5),
                      ),
                      child: Icon(Icons.local_taxi, color: Colors.black),
                    ),
                    SizedBox(height: 5),
                    Text('Corridas', style: TextStyle(fontSize: 12)),
                  ],
                ),
                SizedBox(width: 25),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      margin: EdgeInsets.only(top: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xF5F5F5F5),
                      ),
                      child: Icon(
                        Icons.card_giftcard_sharp,
                        color: Colors.blueGrey,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('Figurinhas', style: TextStyle(fontSize: 12)),
                  ],
                ),
                SizedBox(width: 25),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                    Container(
                      width: 65,
                      height: 65,
                      margin: EdgeInsets.only(top: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xF5F5F5F5),
                      ),
                      child: Icon(Icons.campaign, color: Colors.red),
                    ),
                    SizedBox(height: 5),
                    Text('Promoções', style: TextStyle(fontSize: 12)),
                  ],
                ),
                SizedBox(width: 25),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      margin: EdgeInsets.only(top: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xF5F5F5F5),
                      ),
                      child: Icon(Icons.widgets, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text('Ver mais', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 25),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 200),
              child: CarouselView(
                itemExtent: double.infinity,
                children: [
                  Image.asset("images/card1.jpg", fit: BoxFit.cover),
                  Image.asset("images/card2.jpg", fit: BoxFit.cover),
                  Image.asset("images/card3.jpg", fit: BoxFit.cover),
                  Image.asset("images/card4.jpg", fit: BoxFit.cover),
                  Image.asset("images/card5.jpg", fit: BoxFit.cover),
                  Image.asset("images/card6.jpg", fit: BoxFit.cover),
                  Image.asset("images/card7.jpg", fit: BoxFit.cover),
                ],
              ),
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 16)),
                Text(
                  'Últimas Lojas',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  'Ver mais',
                  style: TextStyle(fontSize: 14, color: Colors.orangeAccent),
                ),
              ],
            ),
            SizedBox(height: 14),
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 16)),
                Column(
                  children: [
                    Container(
                      width: 130,
                      height: 110,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xF5F5F5F5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.store, color: Colors.orangeAccent),
                          SizedBox(height: 8),
                          Text(
                            'Pizzaria do Zé',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 16),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 110,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xF5F5F5F5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.icecream, color: Colors.orangeAccent),
                          SizedBox(height: 8),
                          Text(
                            'Sorveteria do Zé',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      margin: EdgeInsets.only(top: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xF5F5F5F5),
                      ),
                      child: Icon(
                        Icons.icecream_rounded,
                        color: Colors.orangeAccent,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('Açai', style: TextStyle(fontSize: 12)),
                  ],
                ),
                SizedBox(width: 25),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      margin: EdgeInsets.only(top: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xF5F5F5F5),
                      ),
                      child: Icon(Icons.local_pizza, color: Colors.red),
                    ),
                    SizedBox(height: 5),
                    Text('Lanches', style: TextStyle(fontSize: 12)),
                  ],
                ),
                SizedBox(width: 25),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      margin: EdgeInsets.only(top: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xF5F5F5F5),
                      ),
                      child: Icon(Icons.cake, color: Colors.orangeAccent),
                    ),
                    SizedBox(height: 5),
                    Text('Doces & Bolos', style: TextStyle(fontSize: 12)),
                  ],
                ),
                SizedBox(width: 25),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      margin: EdgeInsets.only(top: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xF5F5F5F5),
                      ),
                      child: Icon(Icons.campaign, color: Colors.red),
                    ),
                    SizedBox(height: 5),
                    Text('Promoções', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
                Container(
                  width: 100,
                  height: 100,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(245, 232, 176, 176),
                  ),
                  child: Icon(Icons.campaign, color: Colors.orangeAccent),
                ),
                SizedBox(width: 16),
                Container(
                  width: 100,
                  height: 100,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(245, 232, 176, 176),
                  ),
                  child: Icon(Icons.campaign, color: Colors.orangeAccent),
                ),
                SizedBox(width: 16),
                Container(
                  width: 100,
                  height: 100,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(245, 232, 176, 176),
                  ),
                  child: Icon(Icons.campaign, color: Colors.orangeAccent),
                ),
                SizedBox(width: 16),
                Container(
                  width: 100,
                  height: 100,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(245, 232, 176, 176),
                  ),
                  child: Icon(Icons.campaign, color: Colors.orangeAccent),
                ),
              ],
            ),
            SizedBox(height: 18),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Restaurantes com cupom',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Ad',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  'Ver mais',
                  style: TextStyle(fontSize: 14, color: Colors.orangeAccent),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                  itemRestaurante('Pizzaria do Zé'),
                  SizedBox(width: 16),
                  itemRestaurante('Hamburgueria do Zé'),
                  SizedBox(width: 16),
                  itemRestaurante('Arena brabus'),
                  SizedBox(width: 16),
                  itemRestaurante('Comida Japonesa'),
                ],
              ),
            ),
            SizedBox(height: 18),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    filtroBotao(texto: 'Ordenar', mostrarSeta: true),
                    SizedBox(width: 12),
                    filtroBotao(texto: 'Entrega grátis'),
                    SizedBox(width: 12),
                    filtroBotao(texto: 'Vale-refeição', mostrarSeta: true),
                    SizedBox(width: 12),
                    filtroBotao(texto: 'Distância'),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Lojas',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),

                SizedBox(height: 16),

                lojaItem(
                  icone: Icons.restaurant,
                  nome: 'Hiroshi Sushi',
                  avaliacao: '4.9',
                  quantidade: '175',
                  tempo: '35-45 min',
                  entrega: 'R\$ 5,00',
                ),

                lojaItem(
                  icone: Icons.local_pizza,
                  nome: 'Pizzaria Real Pizzas',
                  avaliacao: '5.0',
                  quantidade: '26',
                  tempo: '80-90 min',
                  entrega: 'R\$ 5,00',
                ),

                lojaItem(
                  icone: Icons.fastfood,
                  nome: 'Andre Pizzas e Lanches',
                  avaliacao: '4.8',
                  quantidade: '136',
                  tempo: '60-70 min',
                  entrega: 'R\$ 4,00',
                ),

                lojaItem(
                  icone: Icons.lunch_dining,
                  nome: 'Artesano Burguer',
                  avaliacao: '4.9',
                  quantidade: '38',
                  tempo: '55-65 min',
                  entrega: 'R\$ 5,00',
                ),

                lojaItem(
                  icone: Icons.dinner_dining,
                  nome: 'Su Gastronomia Araçá',
                  avaliacao: '4.9',
                  quantidade: '332',
                  tempo: '60-70 min',
                  entrega: 'R\$ 5,00',
                ),

                lojaItem(
                  icone: Icons.icecream,
                  nome: 'Tropical Açaí & Porções',
                  avaliacao: '5.0',
                  quantidade: '324',
                  tempo: '57-67 min',
                  entrega: 'R\$ 4,00',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
