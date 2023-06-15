import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cadastro',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF5EC75F, {
          50: const Color(0xFF5EC75F).withOpacity(0.1),
          100: const Color(0xFF5EC75F).withOpacity(0.2),
          200: const Color(0xFF5EC75F).withOpacity(0.3),
          300: const Color(0xFF5EC75F).withOpacity(0.4),
          400: const Color(0xFF5EC75F).withOpacity(0.5),
          500: const Color(0xFF5EC75F).withOpacity(0.6),
          600: const Color(0xFF5EC75F).withOpacity(0.7),
          700: const Color(0xFF5EC75F).withOpacity(0.8),
          800: const Color(0xFF5EC75F).withOpacity(0.9),
          900: const Color(0xFF5EC75F).withOpacity(1.0),
        }),
        //primaryColor: const Color(0xFF5EC75F),
      ),
      home: const RegistrationForm(),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _enderecoController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _telefoneController.dispose();
    _enderecoController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // implementar a lógica de envio do formulário para o backend
      // ou realizar qualquer outra ação desejada com os dados inseridos no formulário.

      final String name = _nameController.text;
      final String email = _emailController.text;
      final String telefone = _telefoneController.text;
      final String endereco = _enderecoController.text;
      final String password = _passwordController.text;

      // Exemplo de exibição dos dados no console
      print('Nome: $name');
      print('Email: $email');
      print('Senha: $password');
      print('telefone: $telefone');
      print('endereco: $endereco');

      // Reinicia os campos do formulário
      _formKey.currentState?.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: _nameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira seu nome';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Nome',
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _enderecoController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira um endereço de e-mail';
                  }
                  // adicionar validações personalizadas para o e-mail aqui
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira seu telefone';
                  }
                  // adicionar validações personalizadas para a senha aqui
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Telefone',
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _telefoneController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira seu endereço';
                  }
                  // adicionar validações personalizadas para a senha aqui
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Endereço',
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira sua senha';
                  }
                  // adicionar validações personalizadas para a senha aqui
                  return null;
                },
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Senha',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Center(
                    child: ElevatedButton(
                  onPressed: _submitForm,
                  child: const Text('Cadastrar'),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
