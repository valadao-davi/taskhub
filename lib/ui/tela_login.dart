import 'package:flutter/material.dart';

class LoginInicial extends StatelessWidget {
  const LoginInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Text("Login"),
            ),
            SizedBox( height: 16),
            TextFormField(
              controller: nomeController,
              decoration: const InputDecoration(
                hintText: 'Usuário',
                border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Senha',
                border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(onPressed: ()  {
              userController.login(context,nomeController.text, passwordController.text);
            }, child: const Text('Login'))
          ],
        ),
      ),
    );
  }
}