```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Use jsonData
    } else {
      // Handle the specific HTTP error
      throw HttpException('Failed to load data: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    // Handle socket exceptions specifically
    print('Socket Exception: $e');
    rethrow;
  } on HttpException catch (e) {
    // Handle HTTP exceptions specifically
    print('HTTP Exception: $e');
    rethrow; 
  } catch (e) {
    // Handle other exceptions
    print('Unexpected Error: $e');
    rethrow; // Re-throwing ensures higher level error handling
  }
}
```