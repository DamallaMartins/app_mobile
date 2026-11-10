import 'package:flutter/material.dart';

void main() {
  runApp(const SegundaTela());
}

class PrimeiraTela extends StatelessWidget {
  const PrimeiraTela({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 480,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 252, 252, 252),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.3),
                      spreadRadius: 5,
                      blurRadius: 4,
                      offset: const Offset(2, 4), // Shadow position: 3px down
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      height: 150,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 218, 188),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: (Icon(
                        Icons.videogame_asset,
                        color: const Color.fromARGB(255, 255, 141, 65),
                        size: 100,
                      )),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 20),
                        SizedBox(
                          width: 300,
                          child: Text(
                            'Bully: Scholarship edition',
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: "DelRose",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'A história segue Jimmy Hopkins, um adolescente que foi expulso de todas as escolas pelas quais já passou. Deixado à própria sorte em Bullworth, abandonado pela mãe para que ela pudesse viajar em sua quinta lua de mel, Jimmy tem um ano escolar inteiro pela frente.',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text(
                              "R\$ 32,00",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromARGB(255, 255, 129, 11),
                              ),
                            ),
                            SizedBox(width: 20),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(
                                  255,
                                  255,
                                  129,
                                  11,
                                ),
                                foregroundColor: Color.fromARGB(
                                  255,
                                  255,
                                  255,
                                  255,
                                ),
                              ),
                              onPressed: () {
                                print('Botão clicado');
                              },
                              child: Text('COMPRAR'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SegundaTela extends StatelessWidget {
  const SegundaTela({super.key});
  @override
  Widget build(BuildContext context) {
    String nome = '';
    String email = '';
    String telefone = '';
    int idade = 0;
    String evento = '';


    List<Registro> listaRegistro = [];
    final formKey = GlobalKey<FormState>();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Cadastro')),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    hintText: 'Digite seu nome',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                    ),
                  ),
                  validator: (nome) {
                    if (nome == null || nome.trim().isEmpty) {
                      return 'Você não informou o nome corretamente';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    nome = value!.trim();
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Digite seu email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                    ),
                  ),
                  validator: (email) {
                    if (email!.contains("@") == false) {
                      return 'Você não informou o email corretamente';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    email = value!.trim();
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Telefone',
                    hintText: 'Digite seu telefone',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                    ),
                  ),
                  validator: (telefone) {
                    if (telefone!.length < 10) {
                      return 'O telefone precisa contar no mínimo 10 números.';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    telefone = value!.trim();
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Idade',
                    hintText: 'Digite sua idade',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                    ),
                  ),
                  validator: (idade) {
                    if (idade == null ||
                        idade.trim().isEmpty ||
                        idade.length > 3) {
                      return 'Insira sua idade ou cheque sua idade novamente';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    idade = int.parse(value!.trim());
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Evento',
                    hintText: 'Digite o nome do seu evento',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                    ),
                  ),
                  validator: (evento) {
                    if (evento!.length < 10) {
                      return 'Você precisa inserir o nome do evento.';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    evento = value!.trim();
                  },
                ),

                SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();

                          listaRegistro.add(
                            Registro(
                              nome: nome,
                              email: email,
                              telefone: telefone,
                              idade: idade,
                              evento: evento,
                            ),
                          );

                          formKey.currentState!.reset();
                        }
                      },
                      child: Text('Cadastrar'),
                    ),

                    SizedBox(width: 30),

                    ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {

                          for (var registro in listaRegistro) {
                            registro.imprimirDados();
                          }
                        }
                      },
                      child: Text('Ver Lista'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
