import 'package:aula_04_bloc_pos/blocs/imc_bloc.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final imcBloc = ImcBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('IMC - Android'),),
      body: ListView(
        children: [
          _criarCampoTexto(imcBloc.alturaController, 'Digite sua altura (cm)'),
          _criarCampoTexto(imcBloc.pesoController, 'Digite seu peso (kg)'),
          ElevatedButton(
            child: Text('Calcular'),
            onPressed: (){
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
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: texto
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
