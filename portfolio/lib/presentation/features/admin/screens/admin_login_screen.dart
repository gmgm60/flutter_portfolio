import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/firebase/firebase_auth.dart';

class AdminLoginScreen extends ConsumerStatefulWidget {
  const AdminLoginScreen({super.key});

  @override
  ConsumerState<AdminLoginScreen> createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends ConsumerState<AdminLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Login'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: _isLoading ? null : _handleLogin,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: _isLoading
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Text('Login'),
                  ),
                ),
                const SizedBox(height: 16),
                OutlinedButton.icon(
                  onPressed: _isLoading ? null : _handleGoogleSignIn,
                  icon: Image.network(
                    'https://www.google.com/favicon.ico',
                    height: 24,
                  ),
                  label: const Text('Sign in with Google'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    if (_formKey.currentState?.validate() ?? false) {
      setState(() => _isLoading = true);
      try {
        final authService = ref.read(firebaseAuthServiceProvider);
        await authService.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text,
        );
        if (mounted) {
          Navigator.pushReplacementNamed(context, '/admin/dashboard');
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Login failed: ${e.toString()}')),
          );
        }
      } finally {
        if (mounted) {
          setState(() => _isLoading = false);
        }
      }
    }
  }

  Future<void> _handleGoogleSignIn() async {
    setState(() => _isLoading = true);
    try {
      final authService = ref.read(firebaseAuthServiceProvider);
      await authService.signInWithGoogle();
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/admin/dashboard');
      }
    } catch (e,st) {
      log("error",stackTrace: st,error: e,name: "Google Sign-In");
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Google Sign-In failed: ${e.toString()}')),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//        child: Card(
//          margin: const EdgeInsets.all(32),
//          child: Container(
//            constraints: const BoxConstraints(maxWidth: 400),
//            padding: const EdgeInsets.all(32),
//            child: Form(
//              key: _formKey,
//              child: Column(
//                mainAxisSize: MainAxisSize.min,
//                children: [
//                  Text(
//                    'Admin Login',
//                    style: Theme.of(context).textTheme.headlineMedium,
//                  ),
//                  const SizedBox(height: 32),
//                  TextFormField(
//                    controller: _emailController,
//                    decoration: const InputDecoration(
//                      labelText: 'Email',
//                      border: OutlineInputBorder(),
//                    ),
//                    validator: (value) {
//                      if (value == null || value.isEmpty) {
//                        return 'Please enter your email';
//                      }
//                      if (!value.contains('@')) {
//                        return 'Please enter a valid email';
//                      }
//                      return null;
//                    },
//                  ),
//                  const SizedBox(height: 16),
//                  TextFormField(
//                    controller: _passwordController,
//                    decoration: const InputDecoration(
//                      labelText: 'Password',
//                      border: OutlineInputBorder(),
//                    ),
//                    obscureText: true,
//                    validator: (value) {
//                      if (value == null || value.isEmpty) {
//                        return 'Please enter your password';
//                      }
//                      if (value.length < 6) {
//                        return 'Password must be at least 6 characters';
//                      }
//                      return null;
//                    },
//                  ),
//                  const SizedBox(height: 32),
//                  SizedBox(
//                    width: double.infinity,
//                    child: ElevatedButton(
//                      onPressed: _isLoading ? null : _handleLogin,
//                      child: Padding(
//                        padding: const EdgeInsets.all(16),
//                        child: _isLoading
//                            ? const CircularProgressIndicator()
//                            : const Text('Login'),
//                      ),
//                    ),
//                  ),
//                ],
//              ),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
}