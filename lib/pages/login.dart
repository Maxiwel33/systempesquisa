import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:opsystem/UserManager/user_manager.dart';
import 'package:opsystem/UserManager/usuarios.dart';
import 'package:opsystem/pages/conexao/Utils/validator.dart';
import 'package:opsystem/pages/home_page.dart';
import 'package:opsystem/pages/nova_page.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blue,
                    Colors.blue,
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/image/logo1.png',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 18.0, left: 18),
              child: Text(
                'Login',
                style: TextStyle(
                  color: Color.fromARGB(255, 3, 49, 88),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: 'email',
                        prefixIcon: const Icon(Icons.person),
                        iconColor: Colors.blue,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      autocorrect: false,
                      validator: (email) {
                        if (!emailValid(email!)) return 'Email invalido';
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      controller: passController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: const Icon(Icons.lock),
                        iconColor: Colors.blue,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (pass) {
                        if (pass!.isEmpty || pass.length < 6)
                          return 'Senha menor que 6 digitos ou inválida';
                        return null;
                      },
                      obscureText: true,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    formKey.currentState?.validate();
                    context.read<UserManager>().signIn(
                        usuarios: Usuarios(
                          email: emailController.text,
                          password: passController.text,
                        ),
                        onFail: (e) {
                          print(e);
                        },
                        onSucess: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const HomePage()));
                        });
                  },
                  child: const Text(
                    'Acesso',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Esqueci a senha',
                ),
              ),
            ),
            Center(
              child: SizedBox(
                  height: 50,
                  width: 300,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const NovaPage()));
                    },
                    child: const Text(
                      'Novo Cadastro',
                      style: TextStyle(fontSize: 18),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
