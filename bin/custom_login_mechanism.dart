import 'dart:io';

abstract class Logger {
  void log(String message);
}

class ConsoleLogger implements Logger {
  @override
  void log(String message) {
    DateTime now = DateTime.now();
    print("[$now] $message");
  }
}

class FileLogger implements Logger {
  String fileName;

  FileLogger(this.fileName);

  @override
  void log(String message) {
    DateTime now = DateTime.now();
    String logMessage = "[$now] $message\n";

    try {
      File file = File(fileName);

      if (!file.existsSync()) {
        file.createSync();
      }

      file.writeAsStringSync(logMessage, mode: FileMode.append);
    } catch (e) {
      print("Error writing to file: $e");
    }
  }
}

void main() {
  Logger consoleLogger = ConsoleLogger();
  Logger fileLogger = FileLogger("log.txt");

  consoleLogger.log("Console log message 1");
  consoleLogger.log("Console log message 2");

  fileLogger.log("File log message 1");
  fileLogger.log("File log message 2");
}
