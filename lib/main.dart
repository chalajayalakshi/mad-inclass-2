import 'package:flutter/material.dart';

void main() {
  runApp(const StudentProfileApp());
}

class StudentProfileApp extends StatelessWidget {
  const StudentProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar: black background with white centered title
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      // Body background: light gray
      backgroundColor: const Color(0xFFF2F2F2),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              // Circular profile avatar with badge
              _buildAvatarWithBadge(),
              const SizedBox(height: 32),
              // Horizontal divider
              Container(
                width: 300,
                height: 1,
                color: Colors.grey[400],
              ),
              const SizedBox(height: 32),
              // Labeled fields
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: const [
                    ProfileField(
                      label: 'Name',
                      value: 'Diluka',
                    ),
                    SizedBox(height: 24),
                    ProfileField(
                      label: 'Email',
                      value: 'diluka.w@nsbm.ac.lk',
                      icon: Icons.mail,
                    ),
                    SizedBox(height: 24),
                    ProfileField(
                      label: 'Points',
                      value: '0',
                      icon: Icons.star,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
      // Floating action button: black circular with white plus icon
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement action
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 28,
        ),
      ),
    );
  }

  /// Builds a 120x120 circular avatar with a green circular badge overlay
  Widget _buildAvatarWithBadge() {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Main avatar circle with person icon
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                spreadRadius: 2,
              ),
            ],
          ),
          child: const Icon(
            Icons.person,
            size: 60,
            color: Colors.grey,
          ),
        ),
        // Green badge with checkmark at bottom-right
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
              border: Border.all(
                color: const Color(0xFFF2F2F2),
                width: 3,
              ),
            ),
            child: const Icon(
              Icons.check,
              color: Colors.white,
              size: 18,
            ),
          ),
        ),
      ],
    );
  }
}

/// Reusable widget for displaying a labeled field
class ProfileField extends StatelessWidget {
  final String label;
  final String value;
  final IconData? icon;

  const ProfileField({
    Key? key,
    required this.label,
    required this.value,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Bold black label
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        // Value line with optional icon
        Row(
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Icon(
                  icon,
                  size: 18,
                  color: Colors.grey[600],
                ),
              ),
            Expanded(
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
