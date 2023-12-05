import 'package:first_app/theme/button_style.dart';
import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Login to your account',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: ListView(
        children: const [
          _HeaderWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25,
          ),
          const Form(),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'In order to use the editing and rating capabilities of TMDB, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple. Click here to get started.',
            style: TextStyle(fontSize: 16, color: Colors.blueAccent),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: AppButtonStyle.linkButton,
                onPressed: () {},
                child: const Text('Register'),
              ),
              TextButton(
                style: AppButtonStyle.linkButton,
                onPressed: () {},
                child: const Text('Verification email'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Form extends StatefulWidget {
  const Form({super.key});

  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {
  final _usernameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? error = null;

  void _login() {
    final username = _usernameTextController.text;
    final password = _passwordTextController.text;

    if (username == 'admin' && password == 'admin') {
      print('Open app');
      setState(() {
        error = null;
      });
    } else {
      setState(() {
        error = 'Error message';
      });
      print('Show error');
    }
  }

  void _resetPassword() {
    print('Reset Password');
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 16, color: Color(0xFF212529));
    const textFieldDecoration = InputDecoration(
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF01B4E4), width: 1.2),
      ),
      contentPadding: EdgeInsets.all(10),
      isCollapsed: true,
    );
    final errorText = error;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null) ...[
          Text(
            errorText,
            style: const TextStyle(color: Colors.red, fontSize: 17),
          ),
          const SizedBox(
            height: 20,
          )
        ],
        const Text('Username', style: textStyle),
        const SizedBox(height: 5),
        TextField(
          controller: _usernameTextController,
          decoration: textFieldDecoration,
        ),
        const SizedBox(height: 20),
        const Text('Password', style: textStyle),
        const SizedBox(height: 5),
        TextField(
          decoration: textFieldDecoration,
          controller: _passwordTextController,
          obscureText: true,
        ),
        const SizedBox(height: 25),
        Row(
          children: [
            TextButton(
              onPressed: _login,
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                ),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xFF01B4E4),
                ),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: const Text('Login'),
            ),
            const SizedBox(width: 30),
            TextButton(
              onPressed: _resetPassword,
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                foregroundColor: MaterialStateProperty.all(
                  const Color(0xFF01B4E4),
                ),
              ),
              child: const Text('Reset password'),
            )
          ],
        )
      ],
    );
  }
}
