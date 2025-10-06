import 'package:flutter/material.dart';

class DigitalCardPage extends StatelessWidget {
  const DigitalCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 420),
        child: Card(
          color: Colors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 48,
                  backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Joseph 96",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text("Flutter Developer", style: TextStyle(fontSize: 14)),
                const SizedBox(height: 16),
                Divider(thickness: 3, color: Colors.grey.shade300),
                _InfoRow(icon: Icons.email, title: "rebeljoseph66@pm.me"),
                _InfoRow(icon: Icons.phone, title: "+1 234 567 8910"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String title;
  const _InfoRow({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 8),
        Text(title, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}
