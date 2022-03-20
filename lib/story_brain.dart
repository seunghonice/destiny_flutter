import 'package:destiny_flutter/story.dart';

class StoryBrain {
  int _storyNumber = 0;
  List<int> answer = [1, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2];
  List<int> userAnswer = [];
  final List<Story> _storyData = [
    Story(storyTitle: '오징어 다리 건너기 게임..', choice1: '시작', choice2: ''),
    Story(storyTitle: '오징어 다리 건너기 게임..\n-\n-', choice1: '윗다리', choice2: '아랫다리'),
    Story(
        storyTitle: '오징어 다리 건너기 게임..\nO-\nX-', choice1: '윗다리', choice2: '아랫다리'),
    Story(
        storyTitle: '오징어 다리 건너기 게임..\nOX-\nXO-',
        choice1: '윗다리',
        choice2: '아랫다리'),
    Story(
        storyTitle: '오징어 다리 건너기 게임..\nOXO-\nXOX-',
        choice1: '윗다리',
        choice2: '아랫다리'),
    Story(
        storyTitle: '오징어 다리 건너기 게임..\nOXOX-\nXOXO-',
        choice1: '윗다리',
        choice2: '아랫다리'),
    Story(
        storyTitle: '오징어 다리 건너기 게임..\nOXOXO-\nXOXOX-',
        choice1: '윗다리',
        choice2: '아랫다리'),
    Story(
        storyTitle: '오징어 다리 건너기 게임..\nOXOXOX-\nXOXOXO-',
        choice1: '윗다리',
        choice2: '아랫다리'),
    Story(
        storyTitle: '오징어 다리 건너기 게임..\nOXOXOXO-\nXOXOXOX-',
        choice1: '윗다리',
        choice2: '아랫다리'),
    Story(
        storyTitle: '오징어 다리 건너기 게임..\nOXOXOXOX-\nXOXOXOXO-',
        choice1: '윗다리',
        choice2: '아랫다리'),
    Story(
        storyTitle: '오징어 다리 건너기 게임..\nOXOXOXOXO-\nXOXOXOXOX-',
        choice1: '윗다리',
        choice2: '아랫다리'),
    Story(storyTitle: '오징어 다리 건너기 게임..\nOXOXOXOXOX\nXOXOXOXOXO\n우승!', choice1: '처음으로', choice2: ''),
    Story(storyTitle: '죽음!!!', choice1: '처음으로', choice2: '')
  ];

  String getStory() => _storyData[_storyNumber].storyTitle;

  String getChoice1() => _storyData[_storyNumber].choice1;

  String getChoice2() => _storyData[_storyNumber].choice2;

  void nextStory(int choiceNumber) {
    userAnswer.add(choiceNumber);
    if (_storyNumber > 10) {
      _storyNumber = 0;
    } else if (userAnswer.last != answer[_storyNumber]) {
      _storyNumber = 12;
    } else {
      _storyNumber++;
    }
  }

  bool buttonShouldBeVisible() => getChoice2() != '';
}
