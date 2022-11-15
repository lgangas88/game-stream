import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart' as cupertino;
import 'package:game_stream/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: ListView(
        padding: const EdgeInsets.only(
            top: 32, bottom: kBottomNavigationBarHeight + 32),
        children: [
          const CircleAvatar(
            backgroundColor: CustomColors.primaryBlueGray,
            radius: 42,
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'My name',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 48),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'AJUSTES',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            tileColor: CustomColors.primaryBlueGray,
            title: Text('Cuenta'),
            trailing: Icon(
              Icons.chevron_right_rounded,
              color: Colors.white.withOpacity(.5),
            ),
          ),
          const SizedBox(height: 3),
          ListTile(
            tileColor: CustomColors.primaryBlueGray,
            title: Text('Notificaciones'),
            trailing: cupertino.CupertinoSwitch(
              value: false,
              onChanged: (value) {},
            ),
          ),
          const SizedBox(height: 3),
          ListTile(
            tileColor: CustomColors.primaryBlueGray,
            title: Text('Editar perfil'),
            trailing: Icon(
              Icons.chevron_right_rounded,
              color: Colors.white.withOpacity(.5),
            ),
          ),
          const SizedBox(height: 3),
          ListTile(
            tileColor: CustomColors.primaryBlueGray,
            title: Text('Califica esta aplicación'),
            trailing: Icon(
              Icons.chevron_right_rounded,
              color: Colors.white.withOpacity(.5),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: const Text('Perfil'),
      automaticallyImplyLeading: false,
      leading: null,
    );
  }
}
