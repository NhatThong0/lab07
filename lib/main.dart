import 'package:flutter/material.dart';
import 'story_data.dart'; // Import file chứa dữ liệu câu chuyện

void main() {
  runApp(const StoryApp());
}

class StoryApp extends StatelessWidget {
  const StoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interactive Story',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const StoryPage(),
    );
  }
}

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  int _currentStep = 0;

  void _chooseOption(int nextStep) {
    setState(() {
      _currentStep = nextStep;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentStepData = storySteps[_currentStep];

    return Scaffold(
      appBar: AppBar(title: const Text('Interactive Story')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentStepData.text,
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            if (currentStepData.choices.isNotEmpty)
              ...currentStepData.choices.map<Widget>((choice) {
                return ElevatedButton(
                  onPressed: () => _chooseOption(choice.nextStep),
                  child: Text(choice.text),
                );
              }).toList()
            else
              ElevatedButton(
                onPressed: () => _chooseOption(0),
                child: const Text('Chơi lại'),
              ),
          ],
        ),
      ),
    );
  }
}
