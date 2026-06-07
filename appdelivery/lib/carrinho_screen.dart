import 'package:appdelivery/checkout_screen.dart';
import 'package:flutter/material.dart';

class CarrinhoScreen extends StatefulWidget {
  const CarrinhoScreen({super.key});

  @override
  State<CarrinhoScreen> createState() => _CarrinhoScreenState();
}

class _CarrinhoScreenState extends State<CarrinhoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'SACOLA',
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.red,
            size: 30,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Limpar',
              style: TextStyle(
                color: Colors.red,
                fontFamily: 'Ubuntu',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
      body: DefaultTextStyle(
        style: const TextStyle(
          fontFamily: 'Ubuntu',
          fontSize: 16,
          color: Colors.black,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 32,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      foregroundImage: AssetImage('images/siricascudo.png'),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Siri Cascudo - Fenda do Biquíni",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                minimumSize: Size.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                alignment: Alignment.centerLeft,
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Adicionar mais itens',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  height: 1.8,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Itens Adicionados",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 5),
                    //row do item//
                    Column(
                      children: List.generate(5, (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'images/burguersiri.png',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Icon(
                                          Icons.edit,
                                          color: Colors.red,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hambúrguer de Siri",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "Direto do fundo do mar...",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(height: 12),
                                    Text(
                                      "R\$ 29,90",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                              41,
                                              158,
                                              158,
                                              158,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                          ),
                                          child: Text(
                                            "  1  ",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                        Text(
                                          "  Hambúrguer de Siri",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(0.0),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    41,
                                    158,
                                    158,
                                    158,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 37,
                                      padding: const EdgeInsets.all(0.0),
                                      child: IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: const BoxConstraints(),
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.remove,
                                          size: 20,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "1",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Container(
                                      width: 40,
                                      height: 37,
                                      padding: const EdgeInsets.all(0.0),
                                      child: IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: const BoxConstraints(),
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.add,
                                          size: 20,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Adicionar mais itens",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.confirmation_number, size: 30),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cupom",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Digite um código",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Digitar",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Resumo de valores",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: const Color.fromARGB(255, 104, 104, 104),
                          ),
                        ),
                        Text(
                          " R\$ 149,50",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: const Color.fromARGB(255, 104, 104, 104),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Taxa de entrega",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: const Color.fromARGB(255, 104, 104, 104),
                          ),
                        ),
                        Text(
                          " R\$ 12,85",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: const Color.fromARGB(255, 104, 104, 104),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Taxa de serviço",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: const Color.fromARGB(255, 104, 104, 104),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                              height: 10,
                              child: IconButton(
                                padding: EdgeInsets
                                    .zero, // Remove o preenchimento interno
                                constraints: const BoxConstraints(),
                                onPressed: () {},
                                icon: Icon(
                                  Icons.question_mark_rounded,
                                  size: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          " R\$ 5,00",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: const Color.fromARGB(255, 104, 104, 104),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          " R\$ 167,35",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total com a entrega",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 1),
                      Text.rich(
                        TextSpan(
                          text: 'R\$ 167,35',
                          style: TextStyle(fontWeight: FontWeight.w500),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' /5 Itens',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CheckoutScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(
                  211,
                  224,
                  41,
                  28,
                ), // Cor de fundo
                foregroundColor: Colors.white,
                minimumSize: const Size(160, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              child: Text("Continuar"),
            ),
          ],
        ),
      ),
    );
  }
}
