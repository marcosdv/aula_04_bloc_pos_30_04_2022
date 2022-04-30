import 'package:aula_04_bloc_pos/blocs/imc_bloc.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final imcBloc = ImcBloc();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('IMC - iOS'),
      ),
      child: ListView(
        children: [
          _criarCampoTexto(imcBloc.alturaController, 'Digite sua altura (cm)'),
          _criarCampoTexto(imcBloc.pesoController, 'Digite seu peso (kg)'),

          CupertinoButton(
            child: const Text('Calcular'),
            onPressed: () {
              setState(() {
                imcBloc.calcular();
              });
            }
          ),

          Text(imcBloc.resultado),
        ],
      ),
    );
  }

  Widget _criarCampoTexto(TextEditingController controller, String texto) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CupertinoTextField(
        controller: controller,
        placeholder: texto,
        keyboardType: TextInputType.number,
      ),
    );
  }
}
