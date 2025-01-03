import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:lottie/lottie.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late Timer _timer;
  bool _showFirstAnimation = true;
  bool _isLogged = false;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 10), (timer) {
      setState(() {
        _showFirstAnimation = !_showFirstAnimation;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      headerWidget: _isLogged
          ? null
          : Center(
              child: Column(
                mainAxisSize: MainAxisSize.min, // Ajusta o tamanho da coluna ao conteúdo
                children: [
                  AnimatedSwitcher(
                    duration: const Duration(seconds: 1),
                    transitionBuilder: (Widget child, Animation<double> animation) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                    child: _showFirstAnimation
                        ? Lottie.asset(
                            'assets/animations/chat_message.json',
                            key: const ValueKey('chat_message'),
                            height: MediaQuery.of(context).size.height * .15,
                          )
                        : Lottie.asset(
                            'assets/animations/message_person.json',
                            key: const ValueKey('message_person'),
                            height: MediaQuery.of(context).size.height * .15,
                          ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
      loginAfterSignUp: false,
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
      onSubmitAnimationCompleted: () {
        setState(() {
          _isLogged = true;
        });
        Navigator.pushNamedAndRemoveUntil(context, '/chat', (route) => false);
      },
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
        cardTheme: const CardTheme(
          color: Colors.white38,
        ),
        titleStyle: const TextStyle(
          fontWeight: FontWeight.w200,
          letterSpacing: 4,
        ),
        inputTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        buttonTheme: LoginButtonTheme(
          backgroundColor: Colors.orange.shade500,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        buttonStyle: const TextStyle(
          fontWeight: FontWeight.w400,
        ),
        pageColorLight: Colors.white70,
        primaryColor: Colors.orange.shade300,
        errorColor: Colors.red.shade300,
        pageColorDark: Colors.black87,
      ),
    );
  }
}
