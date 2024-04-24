import 'package:destini/story_brain.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Destini());

class Destini extends StatelessWidget {
  const Destini({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const StoryPage(),
    );
  }
}

StoryBrain storyBrain = StoryBrain(); //TODO: Step 9 - Create a new storyBrain object from the StoryBrain class.

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'images/background.png'
              ),
              fit: BoxFit.fill
          )
        ),
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
               Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyBrain.getStory(), //TODO: Step 10 - use the storyBrain to get the first story title and display it in this Text Widget.
                    style: const TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      storyBrain.nextStory(1);//TODO: Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red
                  ),
                  child: Text(
                    storyBrain.getChoice1(), //TODO: Step 13 - Use the storyBrain to get the text for choice 1.
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(//TODO: Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
                  visible: storyBrain.buttonShouldBeVisible(),//TODO: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        storyBrain.nextStory(2); //TODO: Step 19 - Call the nextStory() method from storyBrain and pass the number 2 as the choice made by the user.
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue
                    ),
                    child: Text(
                      storyBrain.getChoice2(), //TODO: Step 14 - Use the storyBrain to get the text for choice 2.
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//TODO: Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps. The code for the completed app can be found here: https://github.com/londonappbrewery/destini-challenge-completed/