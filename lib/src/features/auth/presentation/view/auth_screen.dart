import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      // headerWidget: Center(
      //   child: Image.asset(
      //     'assets/images/chat.png',
      //     height: 50,
      //   ),
      // ),
      userValidator: (value) {
        if (!(value!.contains('@'))) {
          return 'E-mail inválido.';
        }
        if (value.isEmpty) {
          return 'Campo obrigatório.';
        }
        return null;
      },
      passwordValidator: (value) {
        if (value!.isEmpty) {
          return 'Campo obrigatório.';
        }
        if (value.length < 6) {
          return 'Senha inválida.';
        }
        return null;
      },
      navigateBackAfterRecovery: true,
      title: 'NeoChat',
      logo: const AssetImage('assets/images/chat.png'),
      onLogin: (data) {
        return null;
      },
      onRecoverPassword: (data) {
        return null;
      },
      onSignup: (data) {
        return null;
      },
      onSubmitAnimationCompleted: () {},
      messages: LoginMessages(
        signUpSuccess: 'Conta Criada com Sucesso!',
        passwordHint: 'Senha',
        userHint: 'E-mail',
        loginButton: 'Entrar',
        signupButton: 'Cadastre-se',
        goBackButton: 'Voltar',
        forgotPasswordButton: 'Esqueceu a Senha?',
        confirmSignupSuccess: 'Sucesso!',
        recoverPasswordIntro: 'Recupere sua senha aqui',
        recoverPasswordDescription: 'Enviaremos as instruções para o e-mail fornecido acima.',
        recoverPasswordButton: 'Recuperar',
        confirmPasswordHint: 'Confirmar Senha',
        flushbarTitleSuccess: 'Sucesso!',
        flushbarTitleError: 'Falha!',
        confirmRecoverSuccess: 'Recuperação de senha bem-sucedida.',
        recoverPasswordSuccess: 'Um e-mail foi enviado.',
        resendCodeSuccess: 'Um novo e-mail foi enviado.',
      ),
      theme: LoginTheme(
        titleStyle: const TextStyle(
          fontWeight: FontWeight.w200,
          letterSpacing: 4,
        ),
        inputTheme: InputDecorationTheme(
            border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        )),
        buttonTheme: LoginButtonTheme(
            shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        )),
        buttonStyle: const TextStyle(
          fontWeight: FontWeight.w400,
        ),
        pageColorLight: Colors.white,
        primaryColor: Colors.orange.shade300,
        errorColor: Colors.red.shade300,
      ),
    );
  }
}
