import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int score = 0;
  bool isPaused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: SafeArea(
          child: Column(
            children: [
              // Game header with score and pause button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Score display
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 20),
                          const SizedBox(width: 5),
                          Text(
                            'Score: $score',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Pause button
                    IconButton(
                      icon: Icon(
                        isPaused ? Icons.play_arrow : Icons.pause,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          isPaused = !isPaused;
                        });
                        if (isPaused) {
                          _showPauseMenu();
                        }
                      },
                    ),
                  ],
                ),
              ),
              // Game area (placeholder)
              Expanded(
                child: Center(
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Game Area\n(Placeholder)',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Game controls
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildControlButton(Icons.arrow_back, 'Left'),
                    _buildControlButton(Icons.stop, 'Stop'),
                    _buildControlButton(Icons.arrow_forward, 'Right'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildControlButton(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white24,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: Icon(icon, color: Colors.white),
            onPressed: () {
              // Control logic would go here
              if (label == 'Left') {
                // Move left
              } else if (label == 'Right') {
                // Move right
              } else {
                // Stop
              }
            },
          ),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  void _showPauseMenu() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.deepPurple.shade800,
        title: const Text(
          'PAUSED',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildPauseMenuItem('Resume', Icons.play_arrow, () {
              Navigator.pop(context);
              setState(() {
                isPaused = false;
              });
            }),
            _buildPauseMenuItem('Restart', Icons.refresh, () {
              Navigator.pop(context);
              setState(() {
                score = 0;
                isPaused = false;
              });
            }),
            _buildPauseMenuItem('Exit', Icons.exit_to_app, () {
              Navigator.pop(context);
              Navigator.pop(context);
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildPauseMenuItem(String text, IconData icon, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Icon(icon, color: Colors.white70),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}