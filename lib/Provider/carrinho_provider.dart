import 'package:flutter/widgets.dart';
import 'package:flutter_final/Models/produtos_modelo.dart';
import 'package:provider/provider.dart';

class CarrinhoProvider extends ChangeNotifier {
  final List<ProdutoModelo> _carrinho = [];
  List<ProdutoModelo> get carrinho => _carrinho;

  void toggleFavorite(ProdutoModelo produto) {
    if (_carrinho.contains(produto)) {
      for (ProdutoModelo element in _carrinho) {
        element.quantidade++;
      }
    } else {
      _carrinho.add(produto);
    }

    notifyListeners();
  }

  static CarrinhoProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<CarrinhoProvider>(
      context,
      listen: listen,
    );
  }
}
