class HelpModel {
  final String title;
  final String content;

  HelpModel({required this.title, required this.content});
}

List helps = [
  HelpModel(
    title: 'How to delete continue watching?',
    content: 'That’s not all that the app is good for, however.',
  ),
  HelpModel(
    title: 'How to delete my list?',
    content:
        'Letterboxd is a social networking site for movie fans, and its app allows you to discover new films and create',
  ),
  HelpModel(
    title: 'How to enable Dark Mode?',
    content: 'Go to More -> choose App setting -> click Dark Mode',
  ),
  HelpModel(
    title: 'How to enable parental lock?',
    content:
        'First up, we have Taste. If you’re looking for an app that’s dedicated to helping you find the best movies for you, then Taste is a great option to do just that.',
  ),
];
