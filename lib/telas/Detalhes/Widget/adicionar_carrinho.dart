import 'package:flutter/material.dart';
import 'package:flutter_final/Models/produtos_modelo.dart';
import 'package:flutter_final/constants.dart';

class AdicionarCarrinho extends StatefulWidget {
  final ProdutoModelo produto;

  const AdicionarCarrinho({super.key, required this.produto});

  @override
  State<AdicionarCarrinho> createState() => _AdicionarCarrinhoState();
}

class _AdicionarCarrinhoState extends State<AdicionarCarrinho> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Container(
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.black,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    iconSize: 18,
                    icon: const Icon(
                      Icons.remove,
                    ),
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    currentIndex.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  IconButton(
                    onPressed: () {},
                    iconSize: 18,
                    icon: const Icon(
                      Icons.add,
                    ),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: apprimaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: const Text(
                  "Adicionar ao Carrinho",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
