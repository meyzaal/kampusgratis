import 'package:flutter/material.dart';
import 'package:kampusgratis/shared/components/avatar.dart';

class ProfileDetailsPage extends StatelessWidget {
  const ProfileDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informasi Pengguna'),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Hero(
                  tag: 'profile-hero-avatar',
                  child: CustomAvatar(
                    radius: 48,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Wicaksono',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    height: 27 / 18,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8),
                // RoleBadge(role: R),
              ],
            ),
          )
        ],
      ),
    );
  }
}
