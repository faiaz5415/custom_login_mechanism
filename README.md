# Custom Logging Mechanism

This Dart project demonstrates a flexible and extensible custom logging mechanism. It allows you to log messages to different destinations, such as the console or a file, using a unified interface. This is particularly useful for applications requiring various logging strategies.

---

## ✨ Features

* **Abstract Logger Interface:** Defines a standard `Logger` interface with a `log` method, ensuring all logging implementations adhere to a common contract.
* **Console Logging:** Provides a `ConsoleLogger` that outputs log messages directly to the console, prefixed with a timestamp.
* **File Logging:** Includes a `FileLogger` that writes log messages to a specified file, also timestamped. It handles file creation if the log file doesn't already exist and appends new messages.
* **Extensible Design:** The abstract `Logger` class makes it easy to add new logging destinations (e.g., database, remote server) in the future without modifying existing code.
* **Error Handling for File Operations:** The `FileLogger` includes basic error handling for file write operations, providing feedback if issues occur.

---

## 📦 Technologies Used

* **Dart:** The core programming language.
* **Abstract Classes & Interfaces:** Utilized for defining the `Logger` contract and promoting a modular design.
* **File I/O (`dart:io`):** Employed for file-based logging operations, including checking file existence, creation, and writing.
* **DateTime:** Used for timestamping log messages.

---

## ▶️ How to Run

To run this custom logging example, make sure you have Dart installed on your system. Then, navigate to the directory containing the `main.dart` file in your terminal and execute the following command:

```bash
dart main.dart
