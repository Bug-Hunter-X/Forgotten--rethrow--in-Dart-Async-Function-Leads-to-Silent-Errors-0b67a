# Dart Async Error Handling: The Forgotten 'rethrow'

This repository demonstrates a common and subtle error in asynchronous Dart programming: forgetting to `rethrow` exceptions caught within an `async` function's `try-catch` block.  This can lead to errors being silently ignored, making debugging significantly harder.

The `bug.dart` file showcases the problematic code, while `bugSolution.dart` provides the corrected version.

The key takeaway: always rethrow exceptions if you need higher-level functions or the caller to handle them.