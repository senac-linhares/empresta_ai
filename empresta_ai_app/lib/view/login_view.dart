import 'package:empresta_ai_app/controllers/itens_controller.dart';
import 'package:empresta_ai_app/controllers/sessao_controller.dart';
import 'package:empresta_ai_app/theme/tema.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key, required this.sessao, required this.itens});

  final SessaoController sessao;
  final ItensController itens;

  @override
  State<StatefulWidget> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  final _apartamento = TextEditingController();
  final _senha = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    final cores = Theme.of(context).colorScheme;
    final textos = Theme.of(context).textTheme;

    return SafeArea(child: Center(
      //Evita que o teclado cubra os campos
      child: SingleChildScrollView(
        padding: EdgeInsets.all(TemaEmprestaAi.espacoG),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(Icons.volunteer_activism, size: 72, color: cores.primary),
              SizedBox(height: TemaEmprestaAi.espacoM),
              Text("Empresta Aí", 
                textAlign: TextAlign.center,
                style: textos.headlineLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: cores.primary
                ),
              ),
              SizedBox(height: TemaEmprestaAi.espacoP),
              Text("Peça empresatado aos seus vizinhos de condominio",
                textAlign: TextAlign.center,
                style: textos.bodyLarge,
              ),

              SizedBox(height: TemaEmprestaAi.espacoG),
              
              TextFormField(
                controller: _apartamento,
                textCapitalization: TextCapitalization.characters,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Bloco e apartamento",
                  hintText: "Ex.: A-302",
                  prefixIcon: Icon(Icons.apartment)
                ),
                validator: widget.sessao.validarApartamento,
              ),
              SizedBox(height: TemaEmprestaAi.espacoM),
              
              TextFormField(
                controller: _senha,
                textCapitalization: TextCapitalization.characters,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Senha",
                  hintText: "Ex.: 1234",
                  prefixIcon: Icon(Icons.apartment)
                ),
                validator: widget.sessao.validarSenha,
              )
            ],
          )),
      ),
    ));
  }

}