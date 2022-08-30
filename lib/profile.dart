import 'package:farmx_iot/services/auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = AuthService().user;
    return (Scaffold(
      appBar: AppBar(title: const Text("User Profile"), elevation: 20.0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.only(top: 50),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(user?.photoURL ??
                      'https://www.gravatar.com/avatar/placeholder'),
                ),
              ),
            ),
          ),
          Text(
            user?.displayName ?? 'Guest',
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: const Text("Sign Out"),
            onPressed: () async {
              await AuthService().signOut();
              // ignore: use_build_context_synchronously
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/', (route) => false);
            },
          ),
        ],
      ),
    ));
  }
}
