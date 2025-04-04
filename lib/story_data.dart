class StoryStep {
  final String text;
  final List<StoryChoice> choices;

  StoryStep({required this.text, required this.choices});
}

class StoryChoice {
  final String text;
  final int nextStep;

  StoryChoice({required this.text, required this.nextStep});
}

final List<StoryStep> storySteps = [
  StoryStep(
    text: 'Bạn đang đứng trước một ngã ba đường. Bạn sẽ đi hướng nào?',
    choices: [
      StoryChoice(text: 'Đi về phía rừng', nextStep: 1),
      StoryChoice(text: 'Đi về phía núi', nextStep: 2),
    ],
  ),
  StoryStep(
    text: 'Bạn bước vào rừng và gặp một con sói. Bạn sẽ làm gì?',
    choices: [
      StoryChoice(text: 'Chạy trốn', nextStep: 3),
      StoryChoice(text: 'Đối mặt với con sói', nextStep: 4),
    ],
  ),
  StoryStep(
    text: 'Bạn leo lên núi và tìm thấy một hang động. Bạn sẽ làm gì?',
    choices: [
      StoryChoice(text: 'Đi vào hang động', nextStep: 5),
      StoryChoice(text: 'Quay lại', nextStep: 0),
    ],
  ),
  StoryStep(
    text:
        'Bạn đã trốn thoát an toàn. Nhưng bạn lạc vào một ngôi làng kỳ lạ. Bạn sẽ làm gì?',
    choices: [
      StoryChoice(text: 'Khám phá ngôi làng', nextStep: 6),
      StoryChoice(text: 'Tìm đường quay lại', nextStep: 7),
    ],
  ),
  StoryStep(text: 'Con sói tấn công bạn. Kết thúc!', choices: []),
  StoryStep(
    text: 'Bạn tìm thấy một kho báu trong hang động. Kết thúc!',
    choices: [],
  ),
  StoryStep(
    text:
        'Ngôi làng có vẻ hoang vắng. Bạn tìm thấy một cuốn sách cổ. Bạn sẽ làm gì?',
    choices: [
      StoryChoice(text: 'Đọc cuốn sách', nextStep: 8),
      StoryChoice(text: 'Bỏ qua và tiếp tục khám phá', nextStep: 9),
    ],
  ),
  StoryStep(
    text: 'Bạn tìm thấy một con đường dẫn về nhà. Kết thúc!',
    choices: [],
  ),
  StoryStep(
    text:
        'Cuốn sách mở ra một cánh cổng ma thuật. Bạn bước vào và biến mất. Kết thúc!',
    choices: [],
  ),
  StoryStep(
    text: 'Bạn tìm thấy một căn nhà nhỏ với ánh sáng. Bạn sẽ làm gì?',
    choices: [
      StoryChoice(text: 'Gõ cửa', nextStep: 10),
      StoryChoice(text: 'Bỏ qua và tiếp tục đi', nextStep: 7),
    ],
  ),
  StoryStep(
    text:
        'Một người già mở cửa và mời bạn vào. Bạn được giúp đỡ và tìm đường về nhà. Kết thúc!',
    choices: [],
  ),
];
