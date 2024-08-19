// custom_printer.dart
import 'package:logger/logger.dart';



class CustomPrinter extends PrettyPrinter {
  CustomPrinter()
      : super(
          methodCount: 2,
          errorMethodCount: 8,
          lineLength: 120,
          colors: true,
          printEmojis: true,
          printTime: true,
        );

  @override
  List<String> log(LogEvent event) {
    var color = PrettyPrinter.levelColors[event.level];
    var emoji = PrettyPrinter.levelEmojis[event.level];

    // Customize colors
    switch (event.level) {
      case Level.verbose:
        color = AnsiColor.fg(AnsiColor.grey(0.5));
        break;
      case Level.info:
        color = AnsiColor.fg(12); // Blue
        break;
      case Level.debug:
        color = AnsiColor.fg(2); // Green
        break;
      case Level.warning:
        color = AnsiColor.fg(208); // Orange
        break;
      case Level.error:
        color = AnsiColor.fg(196); // Red
        break;
      case Level.wtf:
        color = AnsiColor.fg(199); // Pink
        break;
      default:
        color = AnsiColor.fg(7); // White
        break;
    }

    var message = '$emoji ${event.message}';
    var stackTraceStr = event.stackTrace?.toString() ?? '';

    // return [
    //   color(
    //       '┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────'),
    //   color('│ $message'),
    //   color(
    //       '├───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────'),
    //   color('│ ${DateTime.now()}'),
    //   color(
    //       '├───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────'),
    //   color('│ $stackTraceStr'),
    //   color(
    //       '└───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────'),
    // ];

   return [
  color('┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────'),
  color('│ $message       '),
  color('│ $stackTraceStr '),
  color('└───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────'),
];





  }
}
