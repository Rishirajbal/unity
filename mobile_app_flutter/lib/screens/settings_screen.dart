import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool soundEnabled = true;
  bool vibrationEnabled = true;
  double difficulty = 1.0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.deepPurple.shade800,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade800,
              Colors.deepPurple.shade600,
            ],
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            // Sound settings
            _buildSettingSwitch(
              'Sound Effects',
              'Enable game sound effects',
              soundEnabled,
              (value) {
                setState(() {
                  soundEnabled = value;
                });
              },
              Icons.volume_up,
            ),
            
            const Divider(color: Colors.white24),
            
            // Vibration settings
            _buildSettingSwitch(
              'Vibration',
              'Enable device vibration on events',
              vibrationEnabled,
              (value) {
                setState(() {
                  vibrationEnabled = value;
                });
              },
              Icons.vibration,
            ),
            
            const Divider(color: Colors.white24),
            
            // Difficulty slider
            _buildSettingSlider(
              'Difficulty',
              'Adjust game difficulty',
              difficulty,
              (value) {
                setState(() {
                  difficulty = value;
                });
              },
              Icons.speed,
            ),
            
            const Divider(color: Colors.white24),
            
            // Reset high scores
            _buildSettingButton(
              'Reset High Scores',
              'Clear all saved high scores',
              () {
                _showResetConfirmation();
              },
              Icons.delete_forever,
            ),
            
            const SizedBox(height: 40),
            
            // About section
            const Text(
              'About',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            _buildAboutItem('Version', '1.0.0'),
            _buildAboutItem('Developer', 'Rishirajbal'),
            _buildAboutItem('Original Game', 'Unity Box Game'),
            
            const SizedBox(height: 20),
            
            // Credits button
            TextButton(
              onPressed: () {
                _showCredits();
              },
              child: const Text(
                'View Credits',
                style: TextStyle(color: Colors.amber),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingSwitch(
    String title,
    String subtitle,
    bool value,
    Function(bool) onChanged,
    IconData icon,
  ) {
    return ListTile(
      leading: Icon(icon, color: Colors.white70),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: Colors.white54),
      ),
      trailing: Switch(
        value: value,
        onChanged: onChanged,
        activeColor: Colors.amber,
      ),
    );
  }

  Widget _buildSettingSlider(
    String title,
    String subtitle,
    double value,
    Function(double) onChanged,
    IconData icon,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Icon(icon, color: Colors.white70),
          title: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            subtitle,
            style: const TextStyle(color: Colors.white54),
          ),
          trailing: Text(
            _getDifficultyLabel(value),
            style: const TextStyle(color: Colors.amber),
          ),
        ),
        Slider(
          value: value,
          min: 0.0,
          max: 2.0,
          divisions: 2,
          activeColor: Colors.amber,
          inactiveColor: Colors.white24,
          onChanged: onChanged,
        ),
      ],
    );
  }

  String _getDifficultyLabel(double value) {
    if (value <= 0.5) return 'Easy';
    if (value <= 1.5) return 'Medium';
    return 'Hard';
  }

  Widget _buildSettingButton(
    String title,
    String subtitle,
    VoidCallback onPressed,
    IconData icon,
  ) {
    return ListTile(
      leading: Icon(icon, color: Colors.white70),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: Colors.white54),
      ),
      onTap: onPressed,
    );
  }

  Widget _buildAboutItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            '$label: ',
            style: const TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  void _showResetConfirmation() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.deepPurple.shade800,
        title: const Text(
          'Reset High Scores',
          style: TextStyle(color: Colors.white),
        ),
        content: const Text(
          'Are you sure you want to reset all high scores? This action cannot be undone.',
          style: TextStyle(color: Colors.white70),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              // Reset high scores logic would go here
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('High scores have been reset'),
                  backgroundColor: Colors.amber,
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: const Text('Reset'),
          ),
        ],
      ),
    );
  }

  void _showCredits() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.deepPurple.shade800,
        title: const Text(
          'Credits',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'Box Game Mobile',
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Developed by: Rishirajbal',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              'Original Unity Game: Box Game',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              'Built with Flutter and Flame',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              '© 2025 All Rights Reserved',
              style: TextStyle(color: Colors.white54, fontSize: 12),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}